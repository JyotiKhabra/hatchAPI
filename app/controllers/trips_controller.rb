require 'httparty'

class TripsController < ApplicationController

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def create
    @trip = Trip.create(trip_params)
    save_destinations(@trip['id'])
    save_collaborators(@trip['id'])

    render :view => false
  end

  def save_destinations(trip_id)
    destinations_params['destinations'].each do |destination|
      @place_details = HTTParty.get("https://maps.googleapis.com/maps/api/place/details/json?key=#{ENV['GOOGLE_PLACES_API_KEY']}&place_id=#{destination['place_id']}")

      Destination.create({
        name: @place_details['result']['name'],
        trip_id: trip_id,
        lat: @place_details['result']['geometry']['location']['lat'],
        lng: @place_details['result']['geometry']['location']['lng']
      })
    end
  end


  def save_collaborators(trip_id)
    collaborators_params['collaborators'].each do |collaborator|
      Collaborator.create({user_id: collaborator['id'], trip_id: trip_id})
    end
  end

  private

  def trip_params
    params.permit(
      :title,
      :description,
      :start_date,
      :end_date
    )
  end

  def destinations_params
    params.permit(
      :destinations => [:place_id]
      )
  end

  def collaborators_params
    params.permit(
      :collaborators => [:id, :name, :email]
    )
  end

end

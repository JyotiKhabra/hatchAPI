require 'httparty'
ActiveRecord::Base.include_root_in_json = true
class TripsController < ApplicationController

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def show
    @trip = Trip.find(params[:id])
    @destinations = @trip.destinations
    @components = @trip.destinations.map do |destination| {
    components: destination.components,
    component_items: destination.components.map do |component| 
      component.component_items
    end    
  }
  end

    @packing_items = @trip.packing_items
    @collaborators = @trip.collaborators
    @all_info = {
      trip: @trip,
      destinations: @destinations,
      components: @components,
      component_items: @component_items,
      packing_items: @packing_items,
      collaborators: @collaborators.map do |collaborator| {
          id: collaborator.id,
          user_id: collaborator.user_id,
          trip_id: collaborator.trip_id,
          name: collaborator.user.name
        }
      end
    }
    render json: @all_info.to_json
  end

  def create
    @trip = Trip.create(trip_params)
    @saved_dest = save_destinations(@trip['id'])
    @saved_collab = save_collaborators(@trip['id'])

    render json: @trip
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
    puts 'COLLAB'
    puts collaborators_params
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

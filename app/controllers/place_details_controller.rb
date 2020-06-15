require 'httparty'
require 'base64'

class PlaceDetailsController < ApplicationController

  def show
    @place_details = HTTParty.get("https://maps.googleapis.com/maps/api/place/details/json?key=#{ENV['GOOGLE_PLACES_API_KEY']}&place_id=#{params[:id]}")
    render json: @place_details
  end
  
end


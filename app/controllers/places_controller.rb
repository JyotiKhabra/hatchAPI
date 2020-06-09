 class PlacesController < ApplicationController

  def show
    @place_details = HTTParty.get("https://maps.googleapis.com/maps/api/place/autocomplete/json?key=#{ENV['GOOGLE_PLACES_API_KEY']}&input=#{params[:id]}")
    render json: @place_details
  end

end

# ChIJD7fiBh9u5kcRYJSMaMOCCwQ

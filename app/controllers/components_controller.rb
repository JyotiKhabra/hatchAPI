class ComponentsController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

def show
  @components = Component.find(params[:id])
  render json: @components
end

def create

end

def destroy
  @component = Component.find(params[:id])
  @component.destroy
  @components = Component.where(destination_id:  destination_params["destination_id"])
  # puts @components
  render json: @components

end

private

def destination_params
  params.permit(
    :destination_id
  )
end

end

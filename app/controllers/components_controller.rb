class ComponentsController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

def show
  @components = Component.find(params[:id])
  render json: @components
end

def create
  @components = Component.create(destination_id_params)
  # @components = Component.where(destination_id:  destination_params["destination_id"])
  # render json: @components
  head :ok
end


def update
  @component = Component.find(params[:id])
  @component.title = components_params['title']
  @component.save!
  @components = Component.where(destination_id: destination_params["destination_id"])
  render json: @components
end

def destroy
  @component = Component.find(params[:id])
  @component.destroy
  @components = Component.where(destination_id: destination_id_params["destination_id"])
  @formatted = @components.map do |component| {
    component: component,
    component_items: component.component_items
  }
  end
  render json: @formatted
end

private
def destination_id_params
  params.permit(
    :destination_id
  )
end

def destination_params
  params.permit(
    :destination_id,
    :title,
  )
end

def components_params
  params.permit(
    :destination_id,
    :title
  )
end

end

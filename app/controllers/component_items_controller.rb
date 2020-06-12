class ComponentItemsController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def show

    @component_items = ComponentItem.find(params[:id])
    render json: @component_items

  end

  def create

    @collaborators = save_collaborators()
    @allUsers = @collaborators.map { |collaborator| {
      id: collaborator.id,
      name: collaborator.user.name
    }}
    render json: @allUsers

  end

  def destroy
    @currentComponentItem = ComponentItem.find(params[:id])
    @currentComponentItem.destroy
    @component_items = ComponentItem.where(component_id: component_id_params["component_id"])
    @remainComponents = @component_items.map { |component_item| {
      id: component_item.id,
      name: component_item.name,
      address: component_item.address,
      description: component_item.description,
      image: component_item.image_url
    }}
    render json: @remainComponents
  end

end



def save_component_items()
  collaborator_params['collaborators'].each do |collaborator|
    Collaborator.create({user_id: collaborator['user']['id'], trip_id: trip_id_params["trip_id"]})
  end

  @collaborators = Collaborator.where(trip_id: trip_id_params["trip_id"])


end

private

def component_id_params
  params.permit(
    :collaborators => [:user => [:id, :name, :email]]
  )
end

def destination_params
  params.permit(
    :trip_id
    )
end
end

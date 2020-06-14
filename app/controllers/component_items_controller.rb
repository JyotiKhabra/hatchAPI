class ComponentItemsController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def show

    @component_items = ComponentItem.find(params[:id])
    render json: @component_items

  end

  def destroy
    @component_item = ComponentItem.find(params[:id])
    @component_item.destroy
    @component_items = ComponentItem.where(component_id: component_id_params["component_id"])
    # puts @components
    render json: @component_items

  end


  def create

    @component_item = ComponentItem.create(component_item_params)

    render json: @component_item
  end

  # def destroy
  #   @currentComponentItem = ComponentItem.find(params[:id])
  #   @currentComponentItem.destroy
  #   @component_items = ComponentItem.where(component_id: component_id_params["component_id"])
  #   @remainComponents = @component_items.map { |component_item| {
  #     id: component_item.id,
  #     title: component_item.title,
  #     address: component_item.address,
  #     description: component_item.description,
  #     image: component_item.image_url
  #   }}
  #   render json: @remainComponents
  # end




private

  def component_item_params
    params.permit(
      :title,
      :description
    )
  end

  def component_id_params
    params.permit(
      :component_id
    )
  end

end

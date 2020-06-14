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
    head :ok
  end


  def create

    @component_item = ComponentItem.create(component_item_params)

    head :ok
  end

private

  def component_item_params
    params.permit(
      :title,
      :description,
      :component_id
    )
  end

  def component_id_params
    params.permit(
      :component_id
    )
  end

end

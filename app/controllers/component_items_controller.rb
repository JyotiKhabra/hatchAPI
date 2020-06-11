class ComponentItemsController < ApplicationController
  def show

    @component_items = ComponentItem.find(params[:id])
    render json: @component_items

  end

  def create

  end

end
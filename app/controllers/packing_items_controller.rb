class PackingItemsController < ApplicationController

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def create
    @packing_item = PackingItem.create(packing_item_params)
  end

  def update
    @packing_item = PackingItem.find(packing_item[:id])
    @packing_item.update!
    
  private

  def packing_item_params
    params.permit(
      :description,
      :trip_id
    )
  end
end

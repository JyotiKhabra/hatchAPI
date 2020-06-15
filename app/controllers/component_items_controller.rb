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
    if (component_item_params['place_id']) 
      @details = HTTParty.get("https://maps.googleapis.com/maps/api/place/details/json?key=#{ENV['GOOGLE_PLACES_API_KEY']}&place_id=#{component_item_params['place_id']}")
  
    
      data = {
        title: component_item_params['title'],
        description: component_item_params['description'],
        component_id: component_item_params['component_id'],
        image_url: @details['result']['photos'][0]['photo_reference'],
        address: @details['result']['vicinity']
      }
      @component_item = ComponentItem.create(data)
    else
      data = {
        title: component_item_params['title'],
        description: component_item_params['description'],
        component_id: component_item_params['component_id']
      } 
      @component_item = ComponentItem.create(data)
    end

    head :ok
  end

private

  def component_item_params
    params.permit(
      :title,
      :description,
      :component_id,
      :place_id
    )
  end

  def component_id_params
    params.permit(
      :component_id
    )
  end

end

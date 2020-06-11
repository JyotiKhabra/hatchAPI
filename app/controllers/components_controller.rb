class ComponentsController < ApplicationController

def show
  @components = Component.find(params[:id])
  render json: @components
end

def create

end

end
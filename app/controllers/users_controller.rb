ActiveRecord::Base.include_root_in_json = true
class UsersController < ApplicationController
  def index
    @user = User.all
    render json: @user
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    @trips = @user.collaborators.map do |collaborator| 
      {
        trip:collaborator.trip,
        destinations: collaborator.trip.destinations
      }
    end
    render json: @trips
  end

end

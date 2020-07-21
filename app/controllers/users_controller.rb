ActiveRecord::Base.include_root_in_json = true
class UsersController < ApplicationController
  def index
    @user = User.all
    render json: @user
  end

<<<<<<< HEAD
  def create 
=======
  def create
    @newUser = User.create(user_params)
    render json: @newUser
>>>>>>> 1352f3008d2e361739eb0da60b35e7f6520ab6a0
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

  private 

  def user_params
    params.permit(
      :name,
      :email,
      :password_digest,
      :avatar
    )
  end

end

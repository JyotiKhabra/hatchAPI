require 'jwt'

ActiveRecord::Base.include_root_in_json = true
class UsersController < ApplicationController

  def new 
  end

  def create
    @newUser = User.new(user_params)
    if (@newUser.save)
      payload = {user_id: @newUser.id}
      token = JWT.encode(payload, 'user_session')
      session[:user_session] = token
      render json: {user: @newUser, user_session: token}
    else 
      render json: { error: "Invalid credentials" }
    end
  end


  def index
    @user = User.all
    render json: @user
  end

  # def create
  #   @newUser = User.create(user_params)
  #   render json: @newUser
  # end

  # def show
  #   @user = User.find(params[:id])
  #   @trips = @user.collaborators.map do |collaborator|
  #     {
  #       trip:collaborator.trip,
  #       destinations: collaborator.trip.destinations
  #     }
  #   end
  #   render json: @trips
  # end

  private

  def user_params
    params.permit(
      :name,
      :email,
      :password,
      :avatar
    )
  end

end

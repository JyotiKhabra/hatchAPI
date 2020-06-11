class UsersController < ApplicationController
  def index
    @user = User.all
    render json: @user
  end

  def create
    @collaborator = Collaborator.create(collaborator_params)
  end
end

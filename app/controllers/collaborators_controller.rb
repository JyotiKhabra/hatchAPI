class CollaboratorsController < ApplicationController

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def create
    @collaborators = save_collaborators()
    @allUsers = @collaborators.map { |collaborator| {
      id: collaborator.id,
      name: collaborator.user.name
    }}
    render json: @allUsers
  end

  def destroy
    @currentCollaborator = Collaborator.find(params[:id])
    @currentCollaborator.destroy
    @collaborators = Collaborator.where(trip_id: trip_id_params["trip_id"])
    @allUsers = @collaborators.map { |collaborator| {
      id: collaborator.id,
      name: collaborator.user.name
    }}
    render json: @allUsers
  end

  def save_collaborators()
    collaborator_params['collaborators'].each do |collaborator|
      Collaborator.create({user_id: collaborator['user']['id'], trip_id: trip_id_params["trip_id"]})
    end

    @collaborators = Collaborator.where(trip_id: trip_id_params["trip_id"])


  end

  private

  def collaborator_params
    params.permit(
      :collaborators => [:user => [:id, :name, :email]]
    )
  end

  def trip_id_params
    params.permit(
      :trip_id
      )
  end

end

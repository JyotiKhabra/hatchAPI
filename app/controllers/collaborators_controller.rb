class CollaboratorsController < ApplicationController

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def create
    @collaborators = save_collaborators()
  
    head :ok
  end

  def destroy
    @currentCollaborator = Collaborator.find(params[:id])
    @currentCollaborator.destroy
   
    head :ok
  end

  def save_collaborators()
    collaborator_params['collaborators'].each do |collaborator|
      Collaborator.create({user_id: collaborator['id'], trip_id: trip_id_params["trip_id"]})
    end

    @collaborators = Collaborator.where(trip_id: trip_id_params["trip_id"])
  end

  private

  def collaborator_params
    params.permit(
      :collaborators => [:id, :name, :email]
    )
  end

  def trip_id_params
    params.permit(
      :trip_id
      )
  end

end

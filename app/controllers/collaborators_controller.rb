class CollaboratorsController < ApplicationController

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def create
    @colloborators = save_collaborators()

    render json: @collaborators
  end

  def save_collaborators()
    collaborator_params['collaborators'].each do |collaborator|
      Collaborator.create({user_id: collaborator['id'], trip_id: trip_id_params})
    end

    
    Collaborator.all.where(trip_id: trip_id_params)


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

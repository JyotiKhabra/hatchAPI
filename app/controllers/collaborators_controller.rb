class CollaboratorsController < ApplicationController

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def create
    @collaborator = Collaborator.create(collaborator_params)

    render json: @collaborator

  end

  private

  def collaborator_params
    params.permit(
      :trip_id,
      :user_id
    )
  end

end

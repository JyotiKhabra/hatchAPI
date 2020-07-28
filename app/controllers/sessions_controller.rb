require 'jwt'

class SessionsController < ApplicationController

  def new 
  end

  def create
    user = User.find_by_email(params[:email])
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      payload = {id: user.id, name: user.name, email: user.email, avatar: user.avatar}
      token = JWT.encode(payload, 'user_session')
      session[:user_session] = token
      render json: {user: {id: user.id, name: user.name, email: user.email, avatar: user.avatar}, session_token: token}
    else 
      render json: {error: "Invalid Credentials"}
    end
  end

  def show
    user = JWT.decode(params[:token],nil, false)
    render json: user
  end

  def destroy
    session[:user_session] = nil
  end

end
 
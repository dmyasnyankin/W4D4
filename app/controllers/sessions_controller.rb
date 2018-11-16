class SessionsController < ApplicationController
  before_action :require_login

  def create
    user = User.find_by_creds(params[:user][:email], params[:user][:password])
    if user.nil?
      flash.now[:errors] = "Invalid creds brah"
      render :new
      # redirect_to new_session_url
    else
      render json: "Welcome back #{user.email}!"
    end
  end

  def new

  end

  def destroy
    logout
    # redirect_to new_session_url
  end
end

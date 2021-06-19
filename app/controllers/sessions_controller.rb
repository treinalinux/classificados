# frozen_string_literal: true

# class SessionsController
class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  # create
  def create
    user = User.find_by(email: params[:user][:email])
    if user&.authenticate(params[:user][:password])
      reset_session
      session[:user_id] = user.id
      redirect_to root_path, notice: t('.welcome', name: user.name)
    else
      redirect_to new_session_path, alert: t('.invalid_credentials')
    end
  end

  # destroy
  def destroy
    reset_session
    redirect_to new_session_path, notice: t('.session_finished')
  end
end

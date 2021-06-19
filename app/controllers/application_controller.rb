# frozen_string_literal: true

# class ApplicationController
class ApplicationController < ActionController::Base
  helper_method :user_signed_in?, :current_user

  def user_signed_in?
    # get current user with based on session
    current_user.present?
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def require_logged_user
    unless user_signed_in?
      redirect_to new_session_path,
                  alert: 'Você precisa estar logado para acessar a tela anúcio!'
    end
  end
end

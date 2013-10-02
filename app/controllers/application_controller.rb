# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base

  protect_from_forgery

  def admin_current_user
    @admin_current_user ||= Admin::User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_admin_user
    if session[:user_id].present?
      Admin::User.find(session[:user_id])
    else
      redirect_to new_admin_session_path
    end
  end

  helper_method :admin_current_user
  helper_method :authenticate_admin_user
end

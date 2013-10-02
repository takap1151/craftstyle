class Admin::SessionsController < ApplicationController
  layout 'admin'

  def index
    render "new"
  end

  def create
    user = Admin::User.find_by_email params[:email]
    if user && user.authenticate(params[:pass])
      session[:user_id] = user.id
      redirect_to admin_craftsmen_path, aleat: 'ok'
    else
      flash.now.alert = "Error::Invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end

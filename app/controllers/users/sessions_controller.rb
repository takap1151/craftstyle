class Users::SessionsController < Devise::SessionsController

  def index
    render "new"
  end

  def new
    super
  end

  def create
    super
  end
end

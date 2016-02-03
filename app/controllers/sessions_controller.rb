class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path, flash: { notice: "User logged in successfully" }
    else
      flash.now[:error] = 'Wrong username / password.'
      render 'new'
    end
  end
end

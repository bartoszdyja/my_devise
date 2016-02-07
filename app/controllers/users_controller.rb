class UsersController < ApplicationController
  before_filter :authenticate_user, except: [:new, :create, :index]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, flash: { success: 'User saved successfully!!' }
    else
      flash[:error] = 'Error'
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end

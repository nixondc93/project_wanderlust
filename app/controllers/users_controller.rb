class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/profile'
    else
      redirect_to '/signup'
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  def edit
    @user = User.find(user_id)
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

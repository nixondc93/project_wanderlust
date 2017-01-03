class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def show
    @user = User.find(user_id)
  end

  def edit
    @user = User.find(user_id)
  end

  def update
  end

  private

  def user_id
    params[:id]
  end

  def user_params
    params.require(:user).permit(:username)
  end

end

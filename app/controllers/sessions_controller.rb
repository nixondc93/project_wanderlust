class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by({username: user_params[:username]})
  end

  def destroy
    session[:user_id] = nil
    redirect_to profile_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end

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
    @user = User.find_by({name: params[:name]})
    redirect_to '/profile' if @user == User.find(session[:user_id])

  end

  def profile
    @user = User.find(session[:user_id])
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    updated_user = User.find(session[:user_id])
    if updated_user.update(user_params)
      redirect_to '/profile'
    else
      redirect_to '/edit'
    end
  end

  def destroy
    User.destroy(session[:user_id])
    session[:user_id] = nil
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :city, :email, :password, :password_confirmation)
  end

end

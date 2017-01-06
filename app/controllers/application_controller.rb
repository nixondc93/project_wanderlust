class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

  def check_user
    @post = Post.find_by_title(params[:title])
    if session[:user_id] != @post.user_id
      redirect_to post_path(@post.title)
    end
  end

end

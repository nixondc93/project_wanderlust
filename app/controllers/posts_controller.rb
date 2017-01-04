class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    # redirect_to '/posts/:id' if post.user_id == session[:user_id].to_s
  end

  def new
    @post = Post.new()
    @user_id = session[:user_id]
  end


  def create
    puts post_params
    @post = Post.new(post_params)
    if @post.save
      redirect_to '/profile'
    else
      redirect_to '/posts/new'
    end

  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end


end

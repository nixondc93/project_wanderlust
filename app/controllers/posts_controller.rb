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
    @post = Post.new(post_params)
    if @post.save
      if $current_city
        redirect_to '/cities/' + $current_city
      else
        redirect_to '/profile'
      end
    else
      redirect_to '/posts/new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    updated_post = Post.find(params[:id])
    if updated_post.update(post_params)
      if $current_city
        redirect_to '/cities/' + $current_city
      else
        redirect_to '/profile'
      end
    else
      redirect_to editpost_path
    end
  end

  def destroy
    Post.destroy(params[:id])
    if $current_city
      redirect_to '/cities/' + $current_city
    else
      redirect_to '/profile'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :city, :user_id)
  end


end

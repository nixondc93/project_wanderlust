class PostsController < ApplicationController

  def show
    @post = Post.find_by_title(params[:title])
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
    @post = Post.find_by_title(params[:title])
  end

  def update
    updated_post = Post.find_by_title(params[:title])
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

  def delete
    deleted_post = Post.find_by_title(params[:title])
    Post.delete(deleted_post)
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

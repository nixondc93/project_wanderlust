class PostsController < ApplicationController

  def show
    @Post = Post.find(params[:id])
    # redirect_to '/posts/:id' if post.user_id == session[:user_id].to_s
  end

end

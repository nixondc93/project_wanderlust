class CommentsController < ApplicationController

  def new
    @comment = Comment.new()
    @user_id = session[:user_id]
  end


  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      if $current_city
        redirect_to '/cities/' + $current_city
      else
        redirect_to '/profile'
      end
    else

      redirect_to '/'
    end
  end

  # def edit
  #   @comment = Post.find_by_title(params[:title])
  # end

  # def update
  #   updated_comment = Post.find_by_title(params[:title])
  #   if updated_post.update(post_params)
  #     if $current_city
  #       redirect_to '/cities/' + $current_city
  #     else
  #       redirect_to '/profile'
  #     end
  #   else
  #     redirect_to edit_post_path
  #   end
  # end

  def destroy
    deleted_comment = Comment.find(params[:id])
    Comment.destroy(deleted_comment)
    if $current_city
      redirect_to '/cities/' + $current_city
    else
      redirect_to '/profile'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

end

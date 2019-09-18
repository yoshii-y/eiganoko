class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.movie_id = flash[:movie_id]
    @comment.movie_title = flash[:movie_title]
    @comment.save
    redirect_to movie_path(@comment.movie_id)
  end

  def edit
  end

  def update
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end



private
  def comment_params
      params.require(:comment).permit(:title,:content,:user_id,:movie_id,:movie_title)
  end
end

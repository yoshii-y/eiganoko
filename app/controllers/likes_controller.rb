class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(comment_id: @comment.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(comment_id: @comment.id)
    like.destroy
  end

  private

  def set_variables
    @comment = Comment.find(params[:comment_id])
    @id_name = "#like-link-#{@comment.id}"
  end

end

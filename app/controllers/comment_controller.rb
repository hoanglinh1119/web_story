class CommentController < ApplicationController
  before_action :configure_comment_params
  def create
    comment = Comment.new(configure_comment_params)
    # current_user.comments.
    comment.post_id = params[:post_id]
    comment.user_id = current_user.id
    comment.save!
    # @comment = Comment.users&.find_by()
    redirect_to root_path,
    alert: 'comment ok baby'
  end
  
  def configure_comment_params
    params.require(:comment).permit(:content) 
  end
end

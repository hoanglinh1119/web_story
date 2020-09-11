class LikeController < ApplicationController
  # before_action :find_post
  def create
    @like = current_user&.likes&.find_by(post_id: params[:post_id])
    if @like.present?
      @like.destroy
    else
      @like = Like.new(user_id: current_user.id, post_id: params[:post_id])
      @like.save
    end
  end
end

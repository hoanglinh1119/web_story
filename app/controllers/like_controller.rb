class LikeController < ApplicationController
  # before_action :find_post
  def create
    like = current_user&.likes&.find_by(post_id: params[:format])
    if like.present?
      like.destroy
      redirect_to root_path,
      alert: 'unlike'
    else
      like = Like.new(user_id: current_user.id, post_id: params[:format])
      like.save!
      redirect_to root_path, alert: 'like'
    end
  end
  # def destroy
    
  # end

  # private
  # def find_post
  #   @post = Post.find(params[:post_id])
  # end
end

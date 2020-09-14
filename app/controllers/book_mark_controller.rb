class BookMarkController < ApplicationController
  def create
    @bookmark = current_user&.bookmarks&.find_by(post_id: params[:post_id])
    if @bookmark.present?
      @bookmark.destroy
    else
      @bookmark = Bookmark.new(post_id: params[:post_id], user_id: current_user.id)
      @bookmark.save!
    end
  end
end

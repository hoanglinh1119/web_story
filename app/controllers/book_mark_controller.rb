class BookMarkController < ApplicationController
  def create
    bookmark = current_user&.bookmarks&.find_by(post_id: params[:format])
    if bookmark.present?
      bookmark.destroy
      redirect_to root_path, alert:'un follow'
    else
      bookmark = Bookmark.new(post_id: params[:format], user_id: current_user.id)
      bookmark.save!
      redirect_to root_path, alert:'follow'
    end
  end
end

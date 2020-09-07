class Post < ApplicationRecord
  enum status_post: {disactive: 0,confirm: 1, active: 2}
  has_one_attached :avatar
  validates :title , presence: true
  validates :status_active , presence: true, inclusion: {in:status_posts.keys} 
  
  def avatar_image(size = Settings.images.sizes.avatar)
    return format(Settings.images.default_avatar, size: size) unless avatar.attached?

    avatar.variant(resize: "#{size}x#{size}").processed
  end
end

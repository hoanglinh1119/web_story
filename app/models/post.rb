class Post < ApplicationRecord
  enum status_active: {disactive: 0,confirm: 1, active: 2}
  has_one_attached :cover_image
  belongs_to :user
  has_many :likes
  has_many :users, through: :likes
  has_many :bookmarks
  has_many :users , through: :bookmarks
  has_many :comments
  has_many :users, through: :comments
  validates :title , presence: true
  validates :status_active , presence: true, inclusion: {in:status_actives.keys} 

  # def cover_image_file
  #   if cover_image.attached?
  #     return cover_image 
  #   else
  #     return cover_image:'https://hangkhongmy.vn/wp-content/uploads/2019/12/meo-chup-anh-dep-khi-du-lich-1.png'
  #   end
  # end

  # def cover_image_file
  #   return cover_image if cover_image.attached?
  # end
end

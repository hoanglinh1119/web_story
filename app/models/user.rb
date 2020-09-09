class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  enum role: {standard: 0 , adminnistrator: 1}
  has_many :likes
  has_many :posts, through: :likes
  has_many :bookmarks
  has_many :posts, through: :bookmarks
  has_many :comments
  has_many :posts , through: :comments
  validates :username, presence: true, length: {in:6..20}
  validates :password, presence: true, confirmation: true,
                      length: {within: 6..40},
                      on: :create
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i.freeze
  validates :email, presence: true, uniqueness: {case_sensitive: false},
                    format: {with: VALID_EMAIL_REGEX}
end

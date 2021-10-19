class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :content, length: { in: 1..250 }
  #   validates :image, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end

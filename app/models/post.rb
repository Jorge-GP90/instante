class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :content, length: { in: 1..250 }
  #   validates :image, presence: true
  belongs_to :user
end

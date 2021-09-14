class Post < ApplicationRecord
  validates :content, length: { in: 1..250 }
  belongs_to :user
  mount_uploader :image, ImageUploader
#   validates :image, presence: true
end

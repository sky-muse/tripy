class Image < ApplicationRecord
  belongs_to :topic

  # has_many :topic_users, through: :topics, source: 'user'
  mount_uploader :image, ImageUploader
end

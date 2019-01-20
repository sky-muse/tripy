class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true,
  format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 8, maximum: 32 },
  format: { with: /\A[a-z0-9]+\z/i }
  has_secure_password

  has_many :topics
  has_many :images

end

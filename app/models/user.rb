class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: Settings.size_val }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: Settings.size_val },
  format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { maximum: Settings.size_val }
  has_secure_password
end

class User < ApplicationRecord
  has_many :user_habits
  has_many :habits, through: :user_habits
  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: {minimum: 3}
  validates :email, presence: true
  validates :email, uniqueness: true

  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end

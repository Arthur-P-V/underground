class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  has_many :posts
  has_many :votes
  has_many :comments, through: :votes
end

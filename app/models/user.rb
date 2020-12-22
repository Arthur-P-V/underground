class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  has_many :posts
  has_many :votes
  has_many :comments

  def post_count
    count = posts.count
    return count
  end

  def comment_count
    count = comments.count
    return count
  end
end

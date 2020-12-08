class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :votes
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 1500 }
end

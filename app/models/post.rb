class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :votes
  belongs_to :category
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 1500 }

  def is_liked?(user)
    if user
      !!self.votes.find { |vote| vote.user_id == user.id }
    else
      return false
    end
  end

  def vote_id(user)
    if is_liked?(user)
      vote = Vote.where(["user_id = ? and post_id = ?", user.id, id])
      return vote[0]["id"]
    else
      return false
    end
  end

  def score
    values = []
    votes.each do |vote|
      values << vote["value"]
    end
    value = values.sum
    return value
  end
end

class Comment < ApplicationRecord
  has_many :votes
  belongs_to :post
  belongs_to :user
  validates :content, presence: true
  validates :post_id, presence: true
  validates :user_id, presence: true

  def is_liked?(user)
    if user
      !!self.votes.find { |vote| vote.user_id == user.id }
    else
      return false
    end
  end

  def vote_id(user)
    if is_liked?(user)
      vote = Vote.where(["user_id = ? and comment_id = ?", user.id, id])
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

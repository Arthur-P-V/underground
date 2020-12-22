class Vote < ApplicationRecord
  belongs_to :post, optional: true
  belongs_to :comment, optional: true
  belongs_to :user

  validates :value, presence: true
  validates :user_id, presence: true, uniqueness: { scope: :post_id }
end

class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :work

  validates :user_id, presence: true
  validates :work_id, presence: true

  def self.votes_by_user(user)
    return Vote.where(user_id: user.id)
  end


end

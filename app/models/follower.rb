class Follower < ApplicationRecord
  belongs_to :follower, class_name: 'Wizard'
  belongs_to :followed, class_name: 'Wizard'

  validates :follower_id, presence: true
  validates :followed_id, presence: true
end

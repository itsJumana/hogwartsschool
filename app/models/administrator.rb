class Administrator < ApplicationRecord
  belongs_to :wizard
  
  validates :role, presence: true
end

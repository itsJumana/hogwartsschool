class Spell < ApplicationRecord
  belongs_to :wizard
  
  validates :name, presence: true
  validates :description, presence: true
end

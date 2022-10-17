class Session < ApplicationRecord
  validates :name, :capacity, presence: true
  belongs_to :ticket
  
  has_many :hour_session
end

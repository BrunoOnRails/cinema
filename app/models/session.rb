class Session < ApplicationRecord
  validates :day, presence: true
  belongs_to :ticket
  
  has_many :hour_session
end

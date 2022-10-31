class Session < ApplicationRecord
  validates :day, presence: true
  belongs_to :ticket
  
  has_many :hour_session
  accepts_nested_attributes_for :hour_session, reject_if: :all_blank, allow_destroy: true
end

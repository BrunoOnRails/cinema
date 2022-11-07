class Session < ApplicationRecord
  validates :day, presence: true
  belongs_to :ticket
  
  has_many :hour_sessions, dependent: :delete_all
  accepts_nested_attributes_for :hour_sessions, reject_if: :all_blank, allow_destroy: true
end

class Ticket < ApplicationRecord
      validates :title,  presence: :true
      validates :price, numericality:{greater_than: 0}

      has_many :sessions, dependent: :delete_all
      accepts_nested_attributes_for :sessions
end

class Ticket < ApplicationRecord
      validates :title,  presence: :true
      validates :price, numericality:{greater_than: 0}

      has_many :session
      accepts_nested_attributes_for :session
end

class Ticket < ApplicationRecord
      validates :title,  presence: :true
      validates :price, numericality:{greater_than: 0}
end

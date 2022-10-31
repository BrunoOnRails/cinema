class Ticket < ApplicationRecord
      validates :title,  presence: :true
      validates :price, numericality:{greater_than: 0}

      has_many :session
      accepts_nested_attributes_for :session, reject_if: :all_blank, allow_destroy: true
end

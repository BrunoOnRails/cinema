class Ticket < ApplicationRecord
      include PgSearch
      extend FriendlyId

      validates :title,  presence: :true
      validates :price, numericality:{greater_than: 0}

      has_many :sessions, dependent: :delete_all
      accepts_nested_attributes_for :sessions

      friendly_id :title, use: :slugged

      pg_search_scope :search,
            agaist: %i[title description],
            associated_agaist: {sessions: %i[day]}
            
end

json.extract! ticket, :id, :title, :price, :description, :created_at, :updated_at, :date_int, :date_out, :max_capacity, :selling
json.url ticket_url(ticket, format: :json)

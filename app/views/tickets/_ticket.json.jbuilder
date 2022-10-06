json.extract! ticket, :id, :title, :price, :description, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)

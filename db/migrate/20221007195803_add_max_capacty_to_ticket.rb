class AddMaxCapactyToTicket < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :max_capacity, :int
  end
end

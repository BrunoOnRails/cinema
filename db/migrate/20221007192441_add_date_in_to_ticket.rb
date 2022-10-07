class AddDateInToTicket < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :date_int, :date
  end
end

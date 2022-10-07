class AddDateOutToTicket < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :date_out, :date
  end
end

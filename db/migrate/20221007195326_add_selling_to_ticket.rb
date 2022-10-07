class AddSellingToTicket < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :selling, :boolean
  end
end

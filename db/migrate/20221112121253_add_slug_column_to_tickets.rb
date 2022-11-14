class AddSlugColumnToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :slug, :string, unique: true
  end
end

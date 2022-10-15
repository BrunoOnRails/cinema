class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.references :ticket, null: false, foreign_key: true
      t.date :day

      t.timestamps
    end
  end
end

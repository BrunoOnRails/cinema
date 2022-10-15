class CreateHourSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :hour_sessions do |t|
      t.references :session, null: false, foreign_key: true
      t.time :hour

      t.timestamps
    end
  end
end

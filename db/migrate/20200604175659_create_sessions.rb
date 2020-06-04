class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :img
      t.timestamp :date_time
      t.string :duration
      t.integer :coach_id

      t.timestamps
    end
  end
end

class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :img
      t.string :specialty
      t.string :bio

      t.timestamps
    end
  end
end

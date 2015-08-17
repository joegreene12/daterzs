class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|
      t.string :location
      t.string :nickname
      t.string :interest
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

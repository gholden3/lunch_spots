class CreateLunchSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :lunch_spots do |t|
      t.string :name
      t.string :description
      t.integer :rating
      t.timestamps
    end
  end
end

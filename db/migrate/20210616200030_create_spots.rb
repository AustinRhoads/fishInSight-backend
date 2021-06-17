class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.string :name
      t.integer :latitude
      t.integer :longitude
      t.string :location
      t.integer :water_body_class

      t.timestamps
    end
  end
end

class CreateBaits < ActiveRecord::Migration[6.1]
  def change
    create_table :baits do |t|
      t.string :name
      t.integer :efficacy_rating
      t.text :notes

      t.timestamps
    end
  end
end

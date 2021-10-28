class AddSpeciesToCatches < ActiveRecord::Migration[6.1]
  def change
    add_reference :catches, :species, foreign_key: true
  end
end

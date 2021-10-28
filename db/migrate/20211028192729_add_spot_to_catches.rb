class AddSpotToCatches < ActiveRecord::Migration[6.1]
  def change
    add_reference :catches, :spot, foreign_key: true
  end
end

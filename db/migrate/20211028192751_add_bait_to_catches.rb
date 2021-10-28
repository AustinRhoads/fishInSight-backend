class AddBaitToCatches < ActiveRecord::Migration[6.1]
  def change
    add_reference :catches, :bait, foreign_key: true
  end
end

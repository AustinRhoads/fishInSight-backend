class CreateBaitsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :baits_users do |t|
      t.integer :bait_id
      t.integer :user_id

      t.timestamps
    end
  end
end

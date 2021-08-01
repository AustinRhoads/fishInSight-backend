class CreateScrapers < ActiveRecord::Migration[6.1]
  def change
    create_table :scrapers do |t|

      t.timestamps
    end
  end
end

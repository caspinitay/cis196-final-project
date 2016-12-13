class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.string :description
      t.integer :cost
      t.timestamps null: false
    end
  end
end

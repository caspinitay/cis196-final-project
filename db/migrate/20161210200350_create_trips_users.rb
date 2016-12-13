class CreateTripsUsers < ActiveRecord::Migration
  def change
    create_table :trips_users do |t|
      t.references :trip
      t.references :user
      t.timestamps null: false
    end
  end
end

class CreateRoadStations < ActiveRecord::Migration[7.0]
  def change
    create_table :road_stations do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :phone_number, limit: 15
      t.string :business_hours
      t.text :facility_amenities

      t.timestamps
    end
  end
end

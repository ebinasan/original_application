class AddUserIdToRoadStations < ActiveRecord::Migration[7.0]
  def change
    add_column :road_stations, :user_id, :integer
    add_index :road_stations, :user_id
  end
end

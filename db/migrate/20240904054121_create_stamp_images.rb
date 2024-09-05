class CreateStampImages < ActiveRecord::Migration[7.0]
  def change
    create_table :stamp_images do |t|
      t.integer :user_id
      t.integer :road_station_id
      t.string :image_url

      t.timestamps
    end
  end
end

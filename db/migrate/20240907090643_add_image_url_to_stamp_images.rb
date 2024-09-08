class AddImageUrlToStampImages < ActiveRecord::Migration[7.0]
  def change
    remove_column :stamp_images, :image_url, :string
  end
end

class AddHasDesignToStampImages < ActiveRecord::Migration[7.0]
  def change
    add_column :stamp_images, :has_design, :boolean, default: false
  end
end

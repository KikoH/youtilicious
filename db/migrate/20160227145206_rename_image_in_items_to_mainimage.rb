class RenameImageInItemsToMainimage < ActiveRecord::Migration
  def change
  	rename_column :items, :image, :main_image
  end
end

class RenameColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :postimage_id, :post_image_id
  end
end

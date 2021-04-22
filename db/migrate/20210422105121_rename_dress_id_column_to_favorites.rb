class RenameDressIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :dress_id, :post_image_id
  end
end

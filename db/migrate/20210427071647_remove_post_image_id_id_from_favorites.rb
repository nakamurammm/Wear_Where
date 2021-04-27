class RemovePostImageIdIdFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :post_image_id_id, :integer
  end
end

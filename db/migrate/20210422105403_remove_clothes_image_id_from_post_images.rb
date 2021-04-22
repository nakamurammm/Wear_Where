class RemoveClothesImageIdFromPostImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_images, :clothes_image_id, :integer
  end
end

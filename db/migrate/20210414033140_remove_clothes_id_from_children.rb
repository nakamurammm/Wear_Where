class RemoveClothesIdFromChildren < ActiveRecord::Migration[5.2]
  def change
    remove_column :children, :clothes_id, :integer
  end
end

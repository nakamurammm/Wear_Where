class RemoveImageIdFromDresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :dresses, :image_id, :string
  end
end

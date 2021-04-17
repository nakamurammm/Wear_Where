class AddImageIdToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :image_id, :string
  end
end

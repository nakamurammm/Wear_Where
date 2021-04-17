class ChangeColumnImageIdToDresses < ActiveRecord::Migration[5.2]
  def change
    change_column :dresses, :image_id, :text
  end
end

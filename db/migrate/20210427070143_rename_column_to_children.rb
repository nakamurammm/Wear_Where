class RenameColumnToChildren < ActiveRecord::Migration[5.2]
  def change
    rename_column :children, :clothes_id, :dress_id
  end
end

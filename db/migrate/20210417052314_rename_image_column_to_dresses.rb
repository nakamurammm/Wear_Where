class RenameImageColumnToDresses < ActiveRecord::Migration[5.2]
  def change
    rename_column :dresses, :image, :image_id
  end
end
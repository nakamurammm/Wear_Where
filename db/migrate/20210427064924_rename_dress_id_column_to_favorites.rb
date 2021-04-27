class RenameDressIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :dress_id, :postimage_id
  end
end

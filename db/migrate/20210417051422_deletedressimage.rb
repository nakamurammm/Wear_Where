class Deletedressimage < ActiveRecord::Migration[5.2]
  def change
    drop_table :dress_images
  end
end

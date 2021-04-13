class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.integer :clothes_image_id
      t.integer :user_id
      t.text :caption

      t.timestamps
    end
  end
end
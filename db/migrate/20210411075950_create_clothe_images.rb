class CreateClotheImages < ActiveRecord::Migration[5.2]
  def change
    create_table :clothe_images do |t|
      t.integer :clothes_id
      t.integer :post_image_id

      t.timestamps
    end
  end
end

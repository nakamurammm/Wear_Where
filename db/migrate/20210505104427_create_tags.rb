class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :dress_id
      t.integer :post_image_id
      t.timestamps
    end
  end
end
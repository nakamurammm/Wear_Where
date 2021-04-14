class AddColumnsToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :genre_id, :integer
    add_column :dresses, :tops_size, :string
    add_column :dresses, :bottom_size, :string
    add_column :dresses, :foot_size, :string
    add_column :dresses, :introduction, :text
    add_column :children, :dress_id, :integer
    add_column :dress_images, :dress_image_id, :integer
    add_column :favorites, :post_image_id, :integer
    add_column :dress_genre_relations, :dress_id, :integer
    add_column :dress_genre_relations, :genre_id, :integer
  end
end

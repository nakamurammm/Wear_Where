class CreateClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :clothes do |t|
      t.integer :genre_id
      t.string :tops_size
      t.string :bottom_size
      t.string :foot_size
      t.text :introduction

      t.timestamps
    end
  end
end

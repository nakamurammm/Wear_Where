class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.integer :user_id
      t.integer :clothes_id
      t.string :name
      t.string :tall
      t.string :tops_size
      t.string :bottom_size
      t.string :foot_size

      t.timestamps
    end
  end
end

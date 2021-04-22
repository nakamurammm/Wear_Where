class CreateDressesChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :dresses_children do |t|
      t.integer :dress_id
      t.integer :child_id
      t.timestamps
    end
  end
end

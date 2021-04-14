class AddColumnsToSize < ActiveRecord::Migration[5.2]
  def change
    add_column :sizes, :tops_size, :string
    add_column :sizes, :bottom_size, :string
    add_column :sizes, :foot_size, :string
  end
end

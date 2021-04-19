class AddColmunToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :child_id, :integer
  end
end

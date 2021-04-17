class AddSizeToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :size, :string
  end
end

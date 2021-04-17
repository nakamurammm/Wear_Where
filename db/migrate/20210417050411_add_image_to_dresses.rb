class AddImageToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :image, :string
  end
end

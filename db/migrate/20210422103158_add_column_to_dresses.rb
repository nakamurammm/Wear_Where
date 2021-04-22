class AddColumnToDresses < ActiveRecord::Migration[5.2]
  def change
    change_column :dresses, :explanation, :text
  end
end

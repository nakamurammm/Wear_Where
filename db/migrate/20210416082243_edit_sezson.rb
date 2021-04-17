class EditSezson < ActiveRecord::Migration[5.2]
  def change
    change_column :seasons, :name, :string
  end
end

class AddBirthdayToChildren < ActiveRecord::Migration[5.2]
  def change
    add_column :children, :birthday, :date
  end
end

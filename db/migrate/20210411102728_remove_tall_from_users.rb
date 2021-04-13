class RemoveTallFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :tall, :string
  end
end

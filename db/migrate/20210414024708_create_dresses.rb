class CreateDresses < ActiveRecord::Migration[5.2]
  def change
    create_table :dresses do |t|

      t.timestamps
    end
  end
end

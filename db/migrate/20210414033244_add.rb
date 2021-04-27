class Add < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :genre_id, :integer
    add_column :dresses, :explanation, :text
  end
end

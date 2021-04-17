class AddSeasonIdToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :season_id, :integer
  end
end

class ChangeColumnDefaultToSeasons < ActiveRecord::Migration[5.2]
  def change
    change_column_default :seasons, :name, from: nil, to: "0"
  end
end

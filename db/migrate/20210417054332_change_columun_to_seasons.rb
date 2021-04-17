class ChangeColumunToSeasons < ActiveRecord::Migration[5.2]
  def change
    change_column_default :seasons, :name, from: "0", to: ""
  end
end

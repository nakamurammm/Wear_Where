class CreateDressesSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :dresses_seasons do |t|
      t.integer :dress_id
      t.integer :season_id

      t.timestamps
    end
  end
end

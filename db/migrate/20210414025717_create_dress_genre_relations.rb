class CreateDressGenreRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :dress_genre_relations do |t|

      t.timestamps
    end
  end
end

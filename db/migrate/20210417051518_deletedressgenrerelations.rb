class Deletedressgenrerelations < ActiveRecord::Migration[5.2]
  def change
    drop_table :dress_genre_relations
  end
end

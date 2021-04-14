class Genre < ApplicationRecord
  has_many :dress_genre_relations
  has_many :dresses, through: :dress_genre_relations, dependent: :destroy
end

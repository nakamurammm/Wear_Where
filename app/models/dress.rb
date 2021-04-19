class Dress < ApplicationRecord
  belongs_to :child, optional: true
  belongs_to :user, optional: true
  belongs_to :genre
  has_many :dresses_seasons
  has_many :seasons, through: :dresses_seasons
  has_many :favorites, dependent: :destroy
  attachment :image

  def get_season_name
    seasons.map{|season|season.name}.join(",")
  end
end

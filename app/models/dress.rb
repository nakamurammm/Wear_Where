class Dress < ApplicationRecord
  belongs_to :child, dependent: :destroy, optional: true
  belongs_to :user, optional: true
  belongs_to :genre, dependent: :destroy, optional: true
  has_many :dresses_seasons, dependent: :destroy
  has_many :seasons, through: :dresses_seasons
  has_many :favorites, dependent: :destroy
  attachment :image

  def get_season_name
    seasons.map{|season|season.name}.join(",")
  end
end

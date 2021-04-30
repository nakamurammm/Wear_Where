class Dress < ApplicationRecord
  belongs_to :child
  belongs_to :user, optional: true
  belongs_to :genre
  has_many :dresses_seasons
  has_many :seasons, through: :dresses_seasons
  # has_many :dresses_children
  # has_many :children, through: :dresses_seasons
  attachment :image
  validates :size, presence: true
  validates :child, presence: true
  validates :image, presence: { message: 'を選択してください。' }
  validates :genre, presence: true

  validates :explanation, presence: true
  def get_season_name
    seasons.map{|season|season.name}.join("・")
  end

validates :get_season_name, acceptance: { message: 'を選択してください。' }

end

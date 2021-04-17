class Season < ApplicationRecord
  has_many :dresses_seasons, dependent: :destroy
  has_many :dresses, through: :dresses_seasons
end

class Clothe < ApplicationRecord
  belongs_to :children, dependent: :destroy
  belongs_to :genres, dependent: :destroy
  belongs_to :seasons, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :clothe_images, dependent: :destroy
end

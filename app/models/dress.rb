class Dress < ApplicationRecord
  belongs_to :children, dependent: :destroy
  belongs_to :genres, dependent: :destroy
  belongs_to :sizes, dependent: :destroy
  belongs_to :seasons, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :dress_images, dependent: :destroy
end

class Child < ApplicationRecord
  belongs_to :user, optional: true
  has_many :dresses
  # has_many :dresses_children
  # has_many :dresses, through: :dresses_seasons
  validates :name, presence: true
  validates :tall, presence: true
  validates :tops_size, presence: true
  validates :bottom_size, presence: true
  validates :foot_size, presence: true


end

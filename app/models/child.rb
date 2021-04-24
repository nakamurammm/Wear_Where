class Child < ApplicationRecord
  belongs_to :user, optional: true
  has_many :dresses, dependent: :destroy

  validates :name, presence: true
  validates :tall, presence: true
  validates :tops_size, presence: true
  validates :bottom_size, presence: true
  validates :foot_size, presence: true


end

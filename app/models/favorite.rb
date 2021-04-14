class Favorite < ApplicationRecord
  belongs_to :users, dependent: :destroy
  belongs_to :dresses, dependent: :destroy
end

class Genre < ApplicationRecord
  has_many :dresses, dependent: :destroy
end

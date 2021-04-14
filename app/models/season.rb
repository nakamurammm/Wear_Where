class Season < ApplicationRecord
  has_many :dresses, dependent: :destroy
end

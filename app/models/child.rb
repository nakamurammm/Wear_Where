class Child < ApplicationRecord
  belongs_to :users, dependent: :destroy
   has_many :dresses, dependent: :destroy
end

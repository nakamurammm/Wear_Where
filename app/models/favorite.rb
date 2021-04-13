class Favorite < ApplicationRecord
  belongs_to :users, dependent: :destroy
  belongs_to :clothes, dependent: :destroy
end

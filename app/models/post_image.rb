class PostImage < ApplicationRecord
  belongs_to :users, dependent: :destroy
  has_many :clothe_images, dependent: :destroy
end

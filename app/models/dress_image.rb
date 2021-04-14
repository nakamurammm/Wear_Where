class DressImage < ApplicationRecord
  belongs_to :post_images, dependent: :destroy
  belongs_to :dresses, dependent: :destroy
end

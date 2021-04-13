class ClotheImage < ApplicationRecord
  belongs_to :post_images, dependent: :destroy
  belongs_to :clothes, dependent: :destroy
end

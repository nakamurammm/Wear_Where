class PostImage < ApplicationRecord
  belongs_to :users, dependent: :destroy
  has_many :dress_images, dependent: :destroy
end

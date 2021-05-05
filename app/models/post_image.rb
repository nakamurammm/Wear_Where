class PostImage < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :tags

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  attachment :image
  validates :caption, presence: true
  validates :image, presence: true
end

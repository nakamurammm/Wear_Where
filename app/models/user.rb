class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :children, dependent: :destroy
  has_many :dresses, dependent: :destroy
  has_many :post_images, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by!(name: 'ゲスト', email: 'guest@sample.com') do |user|
      user.name = "ゲスト"
      user.password = SecureRandom.urlsafe_base64
    end
  end
end

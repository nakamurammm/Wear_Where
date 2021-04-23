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
end

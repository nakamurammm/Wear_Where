class Child < ApplicationRecord
  belongs_to :users, dependent: :destroy
   has_many :clothes, dependent: :destroy
end

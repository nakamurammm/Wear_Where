class Child < ApplicationRecord
  belongs_to :user, optional: true
   has_many :dresses
end

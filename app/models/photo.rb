class Photo < ApplicationRecord
  has_one :category
  belongs_to :user
end

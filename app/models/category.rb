class Category < ApplicationRecord
  belongs_to :photo
  has_many :like_logs
end

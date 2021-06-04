class LikeLog < ApplicationRecord
  belongs_to :user
  belongs_to :photo
  belongs_to :category
end

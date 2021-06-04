class User < ApplicationRecord
  has_many :photos
  has_many :like_logs
end

class User < ApplicationRecord
  has_many :photos
  has_many :like_logs
  has_secure_password
  has_secure_token
  validates :login, presence: true, uniqueness: true, length: { in: 3..50 }
  validates :password, presence: true, length: { minimum: 6 }

  def invalidate_token
    self.update_columns(token: nil)
  end

end




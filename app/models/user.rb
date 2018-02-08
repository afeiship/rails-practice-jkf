class User < ApplicationRecord
  has_secure_password
  before_create :generate_auth_token


  def generate_auth_token
    loop do
      self.auth_token = SecureRandom.base64(64)
      break if !User.find_by(auth_token: auth_token)
    end
  end
  
end
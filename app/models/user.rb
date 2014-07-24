class User < ActiveRecord::Base
  
  before_save :encrypt_password
  
  validates :name, presence: true, uniqueness: true
  has_secure_password
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
  
  def self.authenticate(email, password)
    user = User.find_by_email(email)
    if user and user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end 
  end
  
end

class User < ActiveRecord::Base
     before_save {self.email = email.downcase}
	 validates :nombre, presence: true, length: { maximum: 50 }
	 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	 validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	 
	 validate :pass, length:{minium: 6}, length: { maximum: 255 }
	has_secure_password
	 validate :password_digest, length:{minium: 6}, length: { maximum: 255 }
end



class User < ActiveRecord::Base
     before_save {self.email = email.downcase}

	
	 
	 validates :nombre, presence: true
	 validates :email, presence: true
	 has_secure_password
	 validate :pass, length:{minium: 6}, length: { maximum: 255 }
	  validate :password_digest, length:{minium: 6}, length: { maximum: 255 }
end



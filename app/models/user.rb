class User < ActiveRecord::Base
before_save {self.email = email.downcase}

	
	 
	 validates :nombre, presence: true
	 validates :email, presence: true
	 has_secure_password
	 validate :pass, length:{minium: 6}
end



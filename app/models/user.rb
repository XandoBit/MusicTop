class User < ActiveRecord::Base
before_save {self.email = email.downcase}
	 attr_accessor :nombre, :email, :pass,:password_digest,:created_at,:updated_at
	 validates :nombre, presence: true
	 validates :email, presence: true
	 has_secure_password
	 validate :pass, length:{minium: 6}
end



class User < ActiveRecord::Base
   has_many :cds, dependent: :destroy

   before_save {self.email = email.downcase}
	 validates :nombre, presence: true, length: { maximum: 50 }
	 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	 validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	 
	 validate :pass, length:{minium: 6}, length: { maximum: 255 }, allow_blank: true
	 has_secure_password
	 validate :password_digest, length:{minium: 6}, length: { maximum: 255 },allow_blank: true

 	def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  	end

end



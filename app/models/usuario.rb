class Usuario < ActiveRecord::Base
 attr_accessible :name, :email, :pass, :password_digest
attr_accessor :nombre
attr_accessor :pass
attr_accessor :email
attr_accessor :password_digest

 validates :nombre,  presence: true, length: { maximum: 50 }
 validates :pass, presence: true, length: { maximum: 255 }



end


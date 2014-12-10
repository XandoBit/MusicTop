class Usuario < ActiveRecord::Base

attr_accessor :nombre
attr_accessor :contraseña

 validates :nombre,  presence: true, length: { maximum: 50 }
 validates :contraseña, presence: true, length: { maximum: 255 }



end


class RegistrarController < ApplicationController
	def registrar
	end

	def form2
  	@name = User.create({nombre: @nombre})
  	@lastname = User.create({apellidos: @apellidos})
  	@pass = User.create({contraseña: @contraseña})
  	@pass2 = User.create({contraseña2: @contraseña2})
  	@email = User.create({correo: @correo})

	end
end

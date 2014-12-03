class RegistrarController < ApplicationController
	def registrar
	end

	def form2
  	@name = Usuario.create({nombre: @nombre})
  	@lastname = Usuario.create({apellidos: @apellidos})
  	@pass = Usuario.create({contraseña: @contraseña})
  	@pass2 = Usuario.create({contraseña2: @contraseña2})
  	@email = Usuario.create({correo: @correo})

	end
end

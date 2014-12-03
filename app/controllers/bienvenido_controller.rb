#clase que hereda de ApplicationController
class BienvenidoController < ApplicationController
  def index
  end
  def form
  	@name = Usuario.create({nombre: @nombre})
  	@pass = Usuario.create({contraseña: @contraseña})
	end
end

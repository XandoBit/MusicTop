#clase que hereda de ApplicationController
class BienvenidoController < ApplicationController
  def index
  end
  def form
  	@name = User.create({nombre: @nombre})
  	@pass = User.create({contraseña: @contraseña})
	end
end

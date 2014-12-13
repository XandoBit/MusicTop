#clase que hereda de ApplicationController
class BienvenidoController < ApplicationController
  def index
  	  @user = User.new
  end
  def form
  	@name = User.create({nombre: @nombre})
  	@pass = User.create({contraseña: @contraseña})
	end
end

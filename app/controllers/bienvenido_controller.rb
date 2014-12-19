#clase que hereda de ApplicationController
class BienvenidoController < ApplicationController
  def index
  	  @user = User.new
  end
  def form
  	@name = User.create({nombre: @nombre})
  	@pass = User.create({contraseña: @contraseña})
	end

	def create
   #fallaba con accr_accesor
  	  @user = User.new(params[:user].permit(:nombre,:email,:pass,:password_digest))   
      if @user.save
      redirect_to users_show_path
      else
      redirect_to users_new_path
    end
    
  end
end

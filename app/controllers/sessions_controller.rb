class SessionsController < ApplicationController
  
  def new
  end

  def create

    if users = User.find_by(nombre: params[:session][:nombre].downcase,pass: params[:session][:pass].downcase)
     redirect_to users_show_path
      # Log the user in and redirect to the user's show page.
    else
      flash = 'Invalido nombre o contraseña '
      render 'new'
    end
   end


  def destroy
  end
end

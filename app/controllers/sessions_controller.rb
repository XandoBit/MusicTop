class SessionsController < ApplicationController
  
  def new
  end

  def create

    if users = User.find_by(nombre: params[:session][:nombre].downcase,pass: params[:session][:pass].downcase)
     redirect_to users_show_path
     log_in users
      # Log the user in and redirect to the user's show page.
    else
     
      render 'new'
    end
   end


  def destroy
  	log_out 
    redirect_to '/signup'
  end
end

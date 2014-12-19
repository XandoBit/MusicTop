class UserarioSessionsController < ApplicationController
  



  def new

  	  @user = User.new
 
  end

  def create

  	  if @user = login(params[:nombre],params[:pass])   
       redirect_to (users_show_path, message: "login OK")
      else  

         flash.now[:alert] = "algo salio mal "
         render action: :new
      end
    
  end




  def destroy
      logout
      redirect_to (:users_show_path, message: "logged out")
  end

 
  private

     def user_params
   #fallaba con accr_accesor
      params.require(:user).permit(:nombre,:email,:pass,:password_digest)

    end
end

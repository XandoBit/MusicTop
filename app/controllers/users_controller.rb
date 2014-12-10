class UsersController < ApplicationController
  



  def new
  	@user = User.new
    end
 

  def create
   
  	@user = User.new(params[:user])    # Not the final implementation!
 
    if @user.save
    	flash[:success] = "Bienvenido MusicTop!"
       redirect_to users_url ,notice: "creadooo correctamentee"
      
    else
      render action:'new'
    end
  end


  def index
  end

  def destroy
    User.find(params[:id]).destroy
  end

  def show
  	
  	 @user = User.order("nombre")

	

  end

   private
    def user_params
      params.require(:user).permit(:nombre,:email,:pass,:password_digest)
    end
end

class UsersController < ApplicationController
  



  def new

  	@user = User.new
 
 end

  def create
   
  	@user = User.new(params[:user].permit(:nombre,:email,:pass,:password_digest))    # Not the final implementation!
    @user.save
    redirect_to users_show_path
    
  end


  def index
     @user = User.order("nombre")
  end

  def destroy
    User.find(params[:id]).destroy
  end

  def show
  	
  	 @users = User.order("nombre")

	

  end

  
end

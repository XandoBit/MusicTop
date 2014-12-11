class UsersController < ApplicationController
  



  def new

  	@user = User.new
 
 end

  def create
   #fallaba con accr_accesor
  	@user = User.new(params[:user].permit(:nombre,:email,:pass,:password_digest))   
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
  	 @user = params[:nombre]
  	 @users = User.all

	

  end

  
end

class UsersController < ApplicationController
  



  def new

  	  @user = User.new
 
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


  def index
     @user = User.order("nombre")
  end

  def destroy
      User.find(params[:id]).destroy
      redirect_to users_show_path
  end

  def show
     
  	 @users =User.order(:nombre)
  end

  def edit
      @user=User.find(params[:id])
  end

  def update
      @user=User.find(params[:id])
      if @user.update_attributes(user_params)
          redirect_to users_show_path
      else
          redirect_to users_edit_path
      end
  end

  private

     def user_params
   #fallaba con accr_accesor
      params.require(:user).permit(:nombre,:email,:pass,:password_digest)

    end
end

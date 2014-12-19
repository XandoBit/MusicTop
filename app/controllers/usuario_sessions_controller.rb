class UserarioSessionsController < ApplicationController
  



  def new

  	  @user = User.new
 
  end

  def create

  	  if @user = login(params[:nombre],params[:pass])   
       redirect_to users_show_path

         flash.now[:alert] = "algo salio mal "
         render action: :new
      end
    
  end




  def destroy
      logout
      redirect_to users_show_path
  end

  def show
      @user = User.order("nombre")
	
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

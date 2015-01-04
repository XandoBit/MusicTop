class UsuarioSessionsController < ApplicationController
  



  def new

  	  @user = User.new
 
  end

  def create

  	  if @user = login(params[:nombre],params[:pass])   
       message: "Bienvendo"
       redirect_to users_show_path

        
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
      @user=User.find(params[:nombre])
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

class UsersController < ApplicationController
  
  before_action :logged_in_user, only: [:edit, :update, :destroy]
 
   before_action :admin_user,     only: :destroy

  def new

  	  @user = User.new
 
 end

  def create
   #fallaba con accr_accesor
  	  @user = User.new(params[:user].permit(:nombre,:email,:pass,:password_digest))   
      if @user.save
      log_in @user
       flash[:success] = "Bienvenido a MusicTop!"
      redirect_to users_show_path
      else
      redirect_to users_new_path
    end
    
  end


  def index
    if params[:search]
      @user = User.find_by(:all, :conditions => ['nombre LIKE ?',
                                                "%#{params[:search]}%"])
    else
      @user = User.order("nombre")
    end
     
  end

  def destroy
      User.find(params[:id]).destroy
      flash[:success] = "User eliminado"
      redirect_to users_show_path
  end

  def show
     
      if params[:search]
      @user = User.find_by(:all, :conditions => ['nombre LIKE ?',
                                                "%#{params[:search]}%"])
    else
      @user = User.order("nombre")
    end
	
  end

  def edit
      @user=User.find_by(params[:id])
  end
 
  def update
      @user=User.find_by(params[:nombre])
      if @current_user.update(user_params)
          flash[:success] = "Perfil cambiado"
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


    def logged_in_user
      unless logged_in?
        flash[:danger] = "Haz log in."
        redirect_to login_url
      end
    end

    # Confirmar el correcto user.
    

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end

class UsersController < ApplicationController
  def new
  	@user = User.new

  end

  def index
  end

  def create
  	@user = User.new(params[:user])    # Not the final implementation!
    if @user.save
      flash[:success] = "Bienvenido MusicTop!"
    else
      render 'new'
    end
  end

  def destroy
  end

  def show
  	
  	 @user = User.order("nombre")

	

  end

   private

    def user_params
      params.require(:user).permit(:nombre, :email, :pass)
    end
end

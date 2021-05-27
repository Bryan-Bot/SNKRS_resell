class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    
  end

  def create
    strong_params = params.require(:user).permit(:user_image, :email, :first_name, :last_name, :password, :size)
    User.create(strong_params)

    redirect_to users_path
  end
end

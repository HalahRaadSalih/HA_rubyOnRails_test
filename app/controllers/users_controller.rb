class UsersController < ApplicationController
  protect_from_forgery
  def index

  end

  def sign_in
    @button_title = "Sign Out"
    @button_route = '/'
  end

  def sign_out
  end

  def new
    @user = User.new
  end

  private def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/auth/signin'
    else
      render 'new'
    end
  end
  
end

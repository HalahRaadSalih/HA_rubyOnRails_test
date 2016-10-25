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
  end
end

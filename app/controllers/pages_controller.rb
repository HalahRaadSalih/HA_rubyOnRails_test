class PagesController < ApplicationController
  def home
    @button_title = "Sign in"
    @button_route = '/auth/signin'
  end
end

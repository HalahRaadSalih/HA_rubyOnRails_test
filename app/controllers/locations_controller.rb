require 'rest-client'
require 'json'

class LocationsController < ApplicationController
  API_KEY = Rails.application.secrets.WEATHER_API_KEY
  API_URL = 'http://api.openweathermap.org/data/2.5/weather'
  ZIP_CODE = "98101"
  URL = API_URL.to_s + '?zip='+ ZIP_CODE.to_s+',us&APPID='+ API_KEY.to_s

  def index
    response = RestClient.get  URL.to_s
    weather = JSON.parse(response.body);
    
    @current_weather = weather["weather"][0]["main"]
    @temprature = weather["main"]["temp"]
  end
end

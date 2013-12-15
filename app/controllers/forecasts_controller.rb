class ForecastsController < ApplicationController
  #The home page - allows the user to request a forecast which gets posted to #create
  # GET '/'
  def new

  end
  # The end point for requesting a new forecast
  # POST '/forecast'
  def create
    @forecast = Forecast.request(params[:forecast])
    debug_me = true
  end
end

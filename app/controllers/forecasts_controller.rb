class ForecastsController < ApplicationController
  def new
    
  end
  def create
    @forecast = Forecast.request(params[:forecast])
    debug_me = true
  end
end

class ForecastsController < ApplicationController
  def new
    @forecast = Forecast.new
  end
end

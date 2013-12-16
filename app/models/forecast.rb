#Represents a weather forecast - made to look and feel like an active record model
#but it is just a wrapper around the forecast_io gem.
class Forecast
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  attr_accessor :location
  #Creates a new instance with the location stored and the instance of the forecast_io forecast
  def initialize(location, forecast_io_object)
    @forecast_io_object = forecast_io_object
    self.location = location
  end
  #Requests a new forecast and returns an instance of this class
  def self.request(attributes)
    geo = ::Geocoder.search(attributes[:location]).first
    self.new attributes[:location], ForecastIO.forecast(geo.latitude, geo.longitude, units: 'uk')
  end
  #Provides the daily summary text
  def daily_summary
    @forecast_io_object.daily.summary
  end
  #Provides the daily icon css class
  def daily_icon
    @forecast_io_object.daily.icon
  end
  #Provides access to a forecast for each day
  def daily
    @forecast_io_object.daily.data
  end
  #Provides access to todays data
  def currently
    @forecast_io_object.currently
  end
end
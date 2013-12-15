class Forecast
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  attr_accessor :location
end
module Weather
  module Interactions
    class << self
      def request_forecast_for(page, location)
        page.fill_in 'forecast[location]', :with => location
        page.click_button 'Go'
      end
    end
  end
end
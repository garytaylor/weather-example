module Weather
  module Selectors
    class << self
      def todays_forecast_widget
        '.widget.todays_forecast'
      end
      def weekly_forecast_widget
        '.widget.weekly_forecast'
      end
      def login_bar
        '.widget.login_bar'
      end
    end
  end
end
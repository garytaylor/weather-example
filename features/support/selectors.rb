module Weather
  module Selectors
    class << self
      def todays_forecast_widget_results
        '.widget.todays_forecast .results'
      end
      def weekly_forecast_widget_results
        '.widget.weekly_forecast .results'
      end
      def login_bar
        '.widget.login-bar'
      end
      def request_forecast_widget
        '.request-forecast.widget'
      end

    end
  end
end
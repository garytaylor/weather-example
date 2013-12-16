module Weather
  module Selectors
    class << self
      def todays_forecast_widget_results
        '.widget.todays-forecast .results'
      end
      def weekly_forecast_widget_results
        '.widget.weekly-forecast .results'
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
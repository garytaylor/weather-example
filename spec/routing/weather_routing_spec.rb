require 'spec_helper'
describe WeatherController do
  describe 'Routing' do
    it 'Should route to the home page' do
      expect(:get => '/').to route_to(:controller => "weather", :action => 'home')
    end

  end
end

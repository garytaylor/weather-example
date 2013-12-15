require 'spec_helper'
describe ForecastsController do
  describe 'Routing' do
    it 'Should route to the home page' do
      expect(:get => '/').to route_to(:controller => "forecasts", :action => 'new')
    end
    it 'Should route a POST to /forecast to the create action' do
      expect(:post => '/forecast').to route_to(:controller => 'forecasts', :action => 'create')
    end

  end
end

require 'spec_helper'
describe ForecastsController do
  describe 'Routing' do
    it 'Should route to the home page' do
      expect(:get => '/').to route_to(:controller => "forecasts", :action => 'new')
    end
    it 'Should route a GET to /forecast/create to the create action' do
      expect(:get => '/forecast/create').to route_to(:controller => 'forecasts', :action => 'create')
    end

  end
end

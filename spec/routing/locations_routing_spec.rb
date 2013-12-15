require 'spec_helper'
describe LocationsController do
  describe 'Routing' do
    it 'Should route to the search action' do
      expect(get: '/locations/search/gary.json').to route_to(controller: 'locations', action: 'search', query: 'gary', format: 'json')
    end
  end
end
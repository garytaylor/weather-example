require 'spec_helper'

describe ForecastsController do

  describe "GET 'new'" do
    before :each do
      mock_model('Forecast')
    end
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    it 'assigns a forecast object to be populated' do
      get 'new'
      expect(assigns[:forecast]).to be_a Forecast
    end
  end
  describe "POST create" do
    before :each do
      mock_model 'Forecast'
    end
    it 'returns http success' do
      post 'create', {forecast: {location: 'Derby'}}
      response.should be_success
    end

  end

end

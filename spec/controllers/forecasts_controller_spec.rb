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
  end
  describe "GET create" do
    before :each do
      mock_model 'Forecast'
      mock_forecast = Forecast.new
      Forecast.stub!(:request).and_return mock_forecast
    end
    it 'returns http success' do
      get 'create', {forecast: {location: 'Derby, UK'}}
      response.should be_success
    end
    it 'assigns a populated forecast object' do
      get 'create', {forecast: {location: 'Derby, UK'}}
      expect(assigns[:forecast]).to be_a(Forecast)
    end

  end

end

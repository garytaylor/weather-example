require 'spec_helper'

describe LocationsController do

  describe "GET 'search'" do
    it "returns http success" do
      get 'search', format: 'json'
      response.should be_success
    end
    it 'calls the geocoder and returns some json' do
      get 'search', query: 'Derby', format: 'json'
      response.should be_success
      json = ActiveSupport::JSON.decode(response.body)
      expect(json).to have_exactly(5).items
      expect(json[0]).to eq({'value' => 'Derby, UK', 'lat' => 52.9225301, 'lng' => -1.4746186})
      expect(json[1]).to eq({'value'=>'Derby, KS 67037, USA', 'lat'=>37.5455735, 'lng'=>-97.2689331})
      expect(json[2]).to eq({'value'=>'Derby, CT, USA', 'lat'=>41.3206523, 'lng'=>-73.0889973})
      expect(json[3]).to eq({'value'=>'Derby, VT, USA', 'lat'=>44.9639953, 'lng'=>-72.13450689999999})
      expect(json[4]).to eq({'value'=>'Derby, NY 14047, USA', 'lat'=>42.6814481, 'lng'=>-78.9753145})
    end
  end

end

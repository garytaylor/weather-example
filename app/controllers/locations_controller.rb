class LocationsController < ApplicationController
  def search
    geo_response = ::Geocoder.search(params[:query])
    response = geo_response.map do |node|
      {value: node.formatted_address, lat: node.latitude, lng: node.longitude}
    end
    render json: response
  end
end

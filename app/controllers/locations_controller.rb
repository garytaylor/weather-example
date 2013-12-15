class LocationsController < ApplicationController
  #Allows the user to search a list of locations using the geocoder
  #GET '/locations/search/<<query text>>'
  def search
    geo_response = ::Geocoder.search(params[:query])
    response = geo_response.map do |node|
      {value: node.formatted_address, lat: node.latitude, lng: node.longitude}
    end
    render json: response
  end
end

require 'rest-client'
require 'json'

class GetGoogleCoffeListService
  def initialize(longitude, latitude)
    @latitude = latitude
    @longitude = latitude
  end

  def call
    begin
      key = Rails.application.credentials.google_secret_key
      location = "#{latitude},#{longitude}"
      url ="https://maps.googleapis.com/maps/api/place/textsearch/json?query=coffee+shops&location="
      base_url = "#{url}#{location}#{radius}#{key}"
      radius = "&radius=5000&key"
    rescue RestClient::ExceptionWithResponse =>
    e.response
  end
end
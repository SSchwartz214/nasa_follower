class DashboardController < ApplicationController
  def index
    @conn = Faraday.new(url: "https://api.nasa.gov") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  
    response = @conn.get("/planetary/apod?api_key=#{ENV['nasa_api_key']}")
  
    @pod = JSON.parse(response.body, symbolize_names: true)[:hdurl]
  end
end
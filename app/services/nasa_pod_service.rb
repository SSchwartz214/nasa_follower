class NasaPodService
  def pod
    JSON.parse(response.body, symbolize_names: true)[:url]
  end

  private

  def conn
    Faraday.new(url: "https://api.nasa.gov") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def response
    conn.get("/planetary/apod?api_key=#{ENV['nasa_api_key']}")
  end
end
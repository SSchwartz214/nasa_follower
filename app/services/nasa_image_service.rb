class NasaImageService
  def initialize(term)
    @term = term
  end

  def images
    JSON.parse(response.body, symbolize_names: true)[:collection][:items]
  end

  private
  attr_reader :term

  def conn 
    Faraday.new(url: "https://images-api.nasa.gov") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def response
    conn.get("/search?q=#{term}&media_type=image")
  end
end
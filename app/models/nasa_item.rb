class NasaItem
  attr_reader :image,
              :title,
              :description,
              :date

  def initialize(attributes = {})
    @image = attributes[:links][0][:href]
    @title = attributes[:data][0][:title]
    @description = attributes[:data][0][:description]
    @date = attributes[:data][0][:date_created]
  end
end
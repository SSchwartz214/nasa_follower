class NasaImageSearchPresenter
  def initialize(term)
    @term = term
  end

  def images
    service.images.take(3).map do |image_data|
      NasaItem.new(image_data)
    end
  end

  private
  attr_reader :term

  def service
    NasaImageSearchService.new(term)
  end
end
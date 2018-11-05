class NasaImagePresenter
  def initialize(term)
    @term = term
  end

  def images
    service.images.take(3).map do |image_data|
      NasaImage.new(image_data)
    end
  end

  private
  attr_reader :term

  def service
    NasaImageService.new(term)
  end
end
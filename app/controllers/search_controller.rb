class SearchController < ApplicationController
  def index
    @term = params[:q]
    @presenter = NasaImageSearchPresenter.new(@term)
  end
end
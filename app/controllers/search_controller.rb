class SearchController < ApplicationController
  def index
    @term = params[:q]
    @presenter = NasaImageSearchPresenter.new(@term)
    @tweets = TwitterClient.new.search_tweets(@term)
  end
end
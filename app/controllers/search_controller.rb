class SearchController < ApplicationController
  def index
    @term = params[:q]
    @presenter = NasaImagePresenter.new(@term)
    @tweets = TwitterClient.new.search_tweets(@term)
  end
end
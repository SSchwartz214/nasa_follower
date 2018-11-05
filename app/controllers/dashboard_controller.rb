class DashboardController < ApplicationController
  def index
    @pod = NasaService.new.pod
    @tweets = TwitterClient.new.get_tweets
  end
end
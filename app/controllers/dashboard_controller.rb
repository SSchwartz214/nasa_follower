class DashboardController < ApplicationController
  def index
    @pod = NasaPodService.new.pod
    @tweets = TwitterClient.new.get_tweets
  end
end
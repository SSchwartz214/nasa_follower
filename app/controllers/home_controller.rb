class HomeController < ApplicationController
  def index
    @pod = PicOfDay.last
    @tweets = TwitterClient.new.get_tweets
  end
end
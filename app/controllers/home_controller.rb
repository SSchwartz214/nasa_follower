class HomeController < ApplicationController
  def index
    @pod = PicOfDay.last
    @tweets = TwitterClient.new.get_tweets
    if current_user.present?
      @favorite = current_user.favorites.find_by(pic_of_day_id: @pod.id)
    end
  end
end
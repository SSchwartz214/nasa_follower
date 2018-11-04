class TwitterClient

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "TzckMSAYq5ldKoJXxCgrHkhNs"
      config.consumer_secret     = "GQtVipAgTCEcebHlz7T3PhNYxsA5mDMZNnpdVDYrb11cfCKMPb"
    end
  end

  def get_tweets
    @client.user_timeline('NASA')
  end
end
class TwitterClient

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['twitter_consumer_key']
      config.consumer_secret     = ENV['twitter_consumer_secret']
    end
  end

  def get_tweets
    @client.user_timeline('NASA').take(3)
  end

  def search_tweets(term)
    @client.search("from:nasa #{term}", result_type: "recent").take(3)
  end
end
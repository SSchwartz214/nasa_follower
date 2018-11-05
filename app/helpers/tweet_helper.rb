module TweetHelper
  def formatted_tweet_date(tweet)
    tweet.created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
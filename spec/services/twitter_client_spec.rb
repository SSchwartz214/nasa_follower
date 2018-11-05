require 'rails_helper'

describe TwitterClient do
  subject{TwitterClient.new}

  it 'exists' do
    expect(subject).to be_a TwitterClient
  end

  describe 'instance methods' do
    context 'get_tweets' do
      it 'returns the 3 most recent tweets' do
        tweets = subject.get_tweets

        expect(tweets.count).to be_equal(3)
      end 
    end
  end
end
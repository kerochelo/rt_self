class TwitterManager
  extend ActiveSupport::Concern

  def search_hashtag(words)
    search_words = words
    client.search(search_words, lang: "ja")
  end

  private

  def client
    config = {
      consumer_key:  Rails.application.credentials.twitter[:api_key],
      consumer_secret: Rails.application.credentials.twitter[:api_secret],
      bearer_token: Rails.application.credentials.twitter[:bearer_token]
    }

    @client ||= Twitter::REST::Client.new(config)
  end
end

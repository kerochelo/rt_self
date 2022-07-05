class TwitterManager
  extend ActiveSupport::Concern

  def self.init
    client
  end

  private

  def client
    client = Twitter::REST::Client.new do |c|
      c.consumer_key = Rails.application.credentials.twitter[:api_key]
      c.consumer_secret = Rails.application.credentials.twitter[:api_secret]
      c.access_token = Rails.application.credentials.twitter[:access_token]
      c.access_token_secret = Rails.application.credentials.twitter[:access_token_secret]
    end
    client
  end
end

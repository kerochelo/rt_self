json.extract! tweet, :id, :tweet_id, :body, :entity, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)

class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def collect
    # throw queue
    # search_words = "#プログラミング初心者 -rt"
    # tdata = twitter_client.search_hashtag(search_words).map {|t| t.full_text  }
    redirect_to root_path
  end

  private

  def twitter_client
    @twitter_client ||= TwitterManager.new
  end
end

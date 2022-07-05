class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def collect
    redirect_to root_path
  end
end

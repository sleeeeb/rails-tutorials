class TweetsController < ApplicationController

  def index
    @tweets=Tweet.all
  end
  def create
Tweet.create(tweet_params)
  redirect_to controller: :tweets, action: :create
end
  def create
  end
  private
  def tweet_params
    params.permit(:text)
  end
end

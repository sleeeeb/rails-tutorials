
```
class TweetsController < ApplicationController

    before_action :move_to_index, except: :index

    def index
 　  #ツイートを降順で取得
      @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
    end

    def new
      return
    end

    def create
      current_user.tweet.create(tweets_params)
    end

    def destroy
       get_tweet_from_id([:id])
      if @tweet.user_id == current_user.id
        @tweet.destroy
      end
    end

    def edit
       get_tweet_from_id([:id])
    end

    def update
       get_tweet_from_id([:id])
      if @tweet.user_id == current_user.id
        @tweet.update(tweet_params)
      end
    end

    def show
      get_tweet_from_id([:id])
      @comments = @tweet.comments.includes(:user)
    end

    private
    def tweets_params
      params.permit(:image, :text)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

    def get_tweet_from_id(tweet_id)
      @tweet = Tweet.find(tweet_id)
    end

end
```

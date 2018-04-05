class TweetsController < ApplicationController

  before_action :authenticate_user!

  def index
    @tweets = Tweet.all

  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(get_param)
    @tweet.user_id = current_user.id

    if @tweet.save

      redirect_to action: 'index'

    else

      redirect_to action: 'new'

    end

  end

  private

  def get_param
    params.require(:tweet).permit(:body)
  end

end

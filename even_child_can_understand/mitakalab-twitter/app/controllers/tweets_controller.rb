class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
  end

  def new
  end

  def create
    @tweet = Tweet.create(params[:tweet].permit(:title, :content))
    #redirect_to '/tweets/index'
  end
end

class PagesController < ApplicationController
  def index
    render 'pages/index'
  end

  def show
    @five_tweets = Tweet.five_random
    @some = Tweet.peeps
    render 'pages/home'
  end
end

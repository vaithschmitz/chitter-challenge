class PagesController < ApplicationController
  def index
    render 'pages/index'
  end

  def show
    @five_tweets = Tweet.five_random
    render 'pages/home'
  end
end

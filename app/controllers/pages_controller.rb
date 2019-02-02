class PagesController < ApplicationController
  def index
    render 'pages/index'
  end

  def show
    @news = Tweet.recent
    render 'pages/home'
  end

end

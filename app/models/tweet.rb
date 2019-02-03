require 'active_record'
class Tweet < ActiveRecord::Base
  belongs_to :user

  def self.con
    if ENV['RACK_ENV'] == 'test'
      establish_connection(:adapter => "postgresql", :database => "chitter_test")
    else
      establish_connection(:adapter => "postgresql", :database => "chitter_development")
    end
  end
      
  def self.spawn_tweets(num)
    self.con
    Tweet.table_name = "mock_tweets"
    Tweet.limit(num)
  end

  def self.five_random
    self.con
    Tweet.table_name = "mock_tweets"
    Tweet.order("RANDOM()").limit(5)
  end

    def self.reconnect!
        clear_cache!
        reset_transaction
    end
end


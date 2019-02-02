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

  def self.recent
    self.con
    @arr = Array.new
    t1 = Tweet.create(content: 'Best day ever!', sentfrom: "Mars", user_id: 1)
    t2 = Tweet.create(content: 'Look at my political opinions.', sentfrom: "Venus", user_id: 1)
    t3 = Tweet.create(content: 'That"s some good melon juice.', sentfrom: "Atlantis", user_id: 2)
    @arr.push(t1, t2, t3)
  end
end


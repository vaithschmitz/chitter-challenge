require 'active_record'
class User < ActiveRecord::Base
  has_many :tweets
  
  def self.con
    if ENV['RACK_ENV'] == 'test'
      establish_connection(:adapter => "postgresql", :database => "chitter_test")
    else
      establish_connection(:adapter => "postgresql", :database => "chitter_development")
    end
  end
end


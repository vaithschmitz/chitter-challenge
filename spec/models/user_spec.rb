require 'spec_helper'
require 'db_helper'
require_relative '../../app/models/user'

describe User do
  before(:each) do
    clean_db
  end
  context "attributes" do
    it "all users have unique ID/ email" do
      100.times do
        User.con
        User.create
        @x = User.select(:id).distinct.count
      end
      expect(@x).to be == 100
    end
  end
end
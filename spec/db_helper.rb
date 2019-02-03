require 'database_cleaner'
require_relative '../app/models/user'
require_relative '../app/models/tweet'


def clean_db
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
end

def spawn_users(num)
  User.con
  User.table_name = "mock_users"
  User.limit(num)
end

def spawn_tweets(num)
  Tweet.con
  Tweet.table_name = "mock_tweets"
  Tweet.limit(num)
end


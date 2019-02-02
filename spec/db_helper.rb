require 'database_cleaner'
require_relative '../app/models/user'

def clean_db
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
end

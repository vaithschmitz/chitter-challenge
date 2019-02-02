require 'database_cleaner'
def clean_db
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
end
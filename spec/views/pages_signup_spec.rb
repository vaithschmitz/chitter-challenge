require 'spec_helper'
require 'db_helper'
require_relative '../../app/models/user'

feature "Signup Page" do
  scenario "User sees latest feed" do
    clean_db
    visit '/signup' 
    fill_in('email', with: 'mohha@gmaol.com')
    fill_in('password', with: 'ar83afdk')
  end
end
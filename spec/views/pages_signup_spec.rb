require 'spec_helper'
require 'db_helper'
require_relative '../../app/models/user'

feature "Signup Page" do
  scenario "User can enter email, password" do
    clean_db
    visit '/signup' 
    expect(page).to have_content 'chittered'
  end
    scenario "Exisiting can request password via email" do
    clean_db
    visit '/signup' 
    expect(page).to have_content 'chittered'
  end
end
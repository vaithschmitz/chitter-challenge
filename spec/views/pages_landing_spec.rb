require 'spec_helper'
require 'db_helper'
require_relative '../../app/models/user'
require_relative '../../app/models/tweet'

feature "Landing Page" do
  scenario "Users are greeted with a message" do 
    visit '/'
    expect(page).to have_content('Welcome')
  end
  scenario "User chooses number of tweets shown" do
    visit '/'
    fill_in 'number', with: 100
    expect(page).to have_content("pass", count: 100)
  end
end
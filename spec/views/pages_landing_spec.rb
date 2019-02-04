require 'spec_helper'
require 'db_helper'
require_relative '../../app/models/user'
require_relative '../../app/models/tweet'

feature "Landing Page" do
  scenario "Users are greeted with a message" do 
    visit '/'
    expect(page).to have_content('Welcome')
  end
end
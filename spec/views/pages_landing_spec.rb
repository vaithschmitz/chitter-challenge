require 'rails_helper'

feature "Landing Page" do
  scenario "Users are greeted with a message" do 
    visit '/'
    expect(page).to have_content('Welcome')
  end
end
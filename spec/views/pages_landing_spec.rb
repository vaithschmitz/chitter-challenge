require 'spec_helper'
require 'db_helper'
require_relative '../../app/models/user'
require_relative '../../app/models/tweet'

feature "Landing Page" do
  scenario "Users are greeted with a message" do 
    visit '/'
    expect(page).to have_content('Welcome')
  end
  scenario "User sees latest feed" do
    clean_db
    u1 = User.create(username: "Steve", email: "123@gmail.com", password: "something")
    u2 = User.create(username: "Will", email: "123@gmail.com", password: "something")
    t1 = Tweet.create(content: 'Best day ever!', sentfrom: "Mars", user_id: 1)
    p t1
    t2 = Tweet.create(content: 'Look at my political opinions.', sentfrom: "Venus", user_id: 1)
    p t2
    t3 = Tweet.create(content: 'That"s some good melon juice.', sentfrom: "Atlantis", user_id: 2)
    p t3
    visit '/home'
    expect(page).to have_content('Best day ever!')
    expect(page).to have_content('Look at my political opinions.')
  end
end
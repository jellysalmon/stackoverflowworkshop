require 'rails_helper'
# Feature: Home Page
#  As a visitor
#  I want to visit a home Page
#  So I view some questions
#
feature "Home Page" do
  # Visit home page
  # given I am a visitor
  # when I visit the home page
  # then I should see "Questions"
  
  scenario "Visit the Home Page" do
    visit root_path # also visit '/'
    expect(page).to have_content "Questions" #visit and page are capybara keywords
  end

  scenario "Visit the Home Page and question title and content is displayed" do
    question1 = Question.create(title: "What's good?", content: "BK Lounge")
    visit root_path
    expect(page).to have_content "Lounge" #visit and page are capybara keywords
  end

  scenario "Visit the Home Page and question 1 title is displayed" do
    question1 = Question.create(title: "What's good?", content: "BK Lounge")
    visit root_path
    expect(page).to have_content "good" #visit and page are capybara keywords
  end



end

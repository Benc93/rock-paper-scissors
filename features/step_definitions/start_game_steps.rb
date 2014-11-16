require 'sinatra'

Given(/^I am on the Home page$/) do
  visit ('/')
end

When(/^I see "(.*?)"$/) do |arg1|
  expect(page).to have_content #"Rock, Paper, Scissors!" "Would you like to play a game?" "Start game!"
end

Then(/^I should click "(.*?)"$/) do |arg1|
  click_on "Start game"
end

Given(/^I'm on the Registration page$/) do
  visit ('/new_game')
end

When(/^I give my name$/) do
  fill_in 'name', with: 'Ben'
end

When(/^I have given my name$/) do
  click_on "Let's go"
end

Then(/^I should see 'Welcome Ben'$/) do
  expect(page).to have_content "Welcome Ben!"
end

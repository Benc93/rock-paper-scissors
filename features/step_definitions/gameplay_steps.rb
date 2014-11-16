require 'sinatra'

Given(/^I am on the game page$/) do
  visit ('/game')
end

When(/^I see my selections$/) do
  expect(page).to have_content
end

Then(/^I click on my choice$/) do
  click_on "rock"
end

Given(/^I am on the results page$/) do
  visit '/game/result'
end

Then(/^I should see the computer's choice$/) do
  expect(page).to have_content
end

Then(/^I should see the winner of the game$/) do
  expect(page).to have_content
end

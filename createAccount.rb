
Given(/^that I am an unregistered user on the sign up page$/) do

  @browser.goto 'http://dep3.t1electroluxqa.electrolux.se/en/'
  sleep 7
  @browser.element(:id => 'uxModalLogin').click
  @browser.element(:xpath => ".//*[@id='GlobalMenuLogin']/div[4]/a").click

end



When(/^I go to the registration page$/) do
  puts @browser.title == 'Electrolux - white goods and household appliances | Electrolux - NOT FOR COMMERCIAL USE'

end



And(/^I supply my details$/) do

end



And(/^I click create my account$/) do

end



Then(/^I should be able to view my newly created account$/) do

end
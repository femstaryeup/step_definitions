Given(/^That I am on the electrolux login page$/) do
  @browser.goto 'http://dep3.t1electroluxqa.electrolux.se/en/'
  sleep 7
  @browser.element(:id => 'uxModalLogin').click
end


When(/^I enter my user name$/) do
@browser.text_field(:id => 'Email_14').set 'dep-tester1@headlondon.com'
end


And(/^my password$/) do
@browser.text_field(:id => 'Password').set 'quality1234'
end


And(/^I click the login button$/) do
@browser.button(:xpath => ".//*[@id='GlobalMenuLogin']/button").click
end


Then(/^I should be logged in successfully$/) do

@browser.element(:xpath => "html/body/div[1]/div[1]/div/ul/li[4]/a").click
@browser.element(:xpath => "html/body/div[1]/div[1]/div/ul/li[4]/div/ul/li[1]/a").click

#Click my account then verify page title as a logged in user
puts @browser.title == 'My Pages | Electrolux - NOT FOR COMMERCIAL USE'
  @browser.element(:xpath => "html/body/div[1]/div[1]/div/ul/li[4]/a").click
  @browser.element(:xpath => "html/body/div[1]/div[1]/div/ul/li[4]/div/ul/li[3]/a").click

end


When(/^I enter a wrong username$/) do
  @browser.text_field(:id => 'Email_14').set 'dep-teste1@headlondon.com'

end

And(/^a password$/) do
  @browser.text_field(:id => 'Password').set 'quality12345'
end



Then(/^I should not be able to login successfully$/) do
  puts @browser.title == "Log in to my Owner's Lounge | Electrolux - NOT FOR COMMERCIAL USE"
  puts @browser.text.include? "That email address or password isn't right"

end
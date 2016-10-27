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

end



When(/^I enter a wrong username$/) do

end



And(/^a password$/) do

end





Then(/^I should not be able to login successfully$/) do

end

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

  @browser.text_field(:id => 'FirstName_13').set 'Test'
  @browser.text_field(:id => 'LastName_13').set 'Qa'
  #@browser.text_field(:id => 'LastName_13').set Faker::Name.last_name



  #Emailaddress = Faker::Internet.free_email
  @browser.text_field(:id => 'Email_13').set Faker::Internet.free_email

  @browser.text_field(:id => 'Password_13').set 'quality1234'

  @browser.checkbox(:xpath => ".//*[@id='ReadTerms']").set



end



And(/^I click create my account$/) do
  @browser.button(:xpath => ".//*[@id='create-account-form']/button").click


end



Then(/^I should be able to view my newly created account$/) do
  puts @browser.title == 'My Pages | Electrolux - NOT FOR COMMERCIAL USE'

end
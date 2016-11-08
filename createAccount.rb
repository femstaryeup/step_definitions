
Given(/^that I am an unregistered user on the sign up page$/) do

  @driver.navigate.to ('http://dep3.t1electroluxqa.electrolux.se/en/')
  sleep 7
  @driver.find_element(:id, 'uxModalLogin').click
  @driver.find_element(:xpath, ".//*[@id='GlobalMenuLogin']/div[4]/a").click

end



When(/^I go to the registration page$/) do

  expect(@driver.title).to be == 'Electrolux - white goods and household appliances | Electrolux - NOT FOR COMMERCIAL USE'

end



And(/^I supply my details$/) do

  @driver.find_element(:id, 'FirstName_13').send_keys 'Test'
  @driver.find_element(:id, 'LastName_13').send_keys 'Qa'
  @driver.find_element(:id, 'Email_13').send_keys Faker::Internet.free_email
  @driver.find_element(:id, 'Password_13').send_keys 'quality1234'
  @driver.find_element(:xpath, ".//*[@id='ReadTerms']").click




end



And(/^I click create my account$/) do

  @driver.find_element(:xpath, ".//*[@id='create-account-form']/button").click



end



Then(/^I should be able to view my newly created account$/) do


  expect(@driver.title).to be == 'My Pages | Electrolux - NOT FOR COMMERCIAL USE'


end
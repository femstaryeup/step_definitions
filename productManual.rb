
Given(/^that I am a consumer$/) do
  @browser.goto 'http://dep3.t1electroluxqa.electrolux.se/en/'
  sleep 7
  @browser.element(:id => 'uxModalLogin').click
  @browser.text_field(:id => 'Email_14').set 'dep-tester1@headlondon.com'
  @browser.text_field(:id => 'Password').set 'quality1234'
  @browser.button(:xpath => ".//*[@id='GlobalMenuLogin']/button").click


end


When(/^I navigate to the product details page for a product$/) do

  @browser.goto 'http://dep3.t1electroluxuat.electrolux.se/en/homecare/vacuum-cleaners/vacuum-cleaners/'
  sleep 15

  @browser.element(:css => '.js-document-download').click

end


Then(/^I should be able to view the product manual$/) do
  @browser.button(:xpath => ".//*[@id='support']/div[1]/div[1]/div[2]/p[2]/a").click

  #Verify page title to be Download electrolux doc page

  expect(browser.document.title).to eq("Download your Electrolux documents | Electrolux - NOT FOR COMMERCIAL USE")


end


Given(/^that I am a consumer on the product manual page$/) do

end




When(/^I make a search for a manual$/) do

end


Then(/^I should be able to view the product manual returned from the search results$/) do

end
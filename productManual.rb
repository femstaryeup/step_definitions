
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
  sleep 5
  @browser.goto 'http://dep3.t1electroluxqa.electrolux.se/en/homecare/vacuum-cleaners/vacuum-cleaners/cordless-vacuum-cleaner/zb3101/'

  sleep 5



 # @browser.button(:xpath => "html/body/main/div[2]/div[2]/ul/li[1]/div/a/h3").click

end


Then(/^I should be able to view the product manual$/) do

@browser.goto 'http://dep3.t1electroluxqa.electrolux.se/en/support/user-manuals/?q=ZB3101'
sleep 5
  #Verify page title to be Download electrolux doc page




end


Given(/^that I am a consumer on the product manual page$/) do
  puts @browser.title == "Download your Electrolux documents | Electrolux - NOT FOR COMMERCIAL USE"

end




When(/^I make a search for a manual$/) do

end


Then(/^I should be able to view the product manual returned from the search results$/) do

end
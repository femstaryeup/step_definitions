
Given(/^that I am a consumer$/) do
  @driver.navigate.to ('http://dep3.t1electroluxqa.electrolux.se/en/')
  sleep 7
  @driver.find_element(:id, 'uxModalLogin').click
  @driver.find_element(:id, 'Email_14').send_keys 'dep-tester1@headlondon.com'
  @driver.find_element(:id, 'Password').send_keys 'quality1234'
  @driver.find_element(:xpath, ".//*[@id='GlobalMenuLogin']/button").click


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
sleep 3

  #@browser.goto 'http://www.electrolux-ui.com//DocumentDownLoad.aspx?DocURL=2014\000\00076EFXumES.pdf'
  #@browser.text_field(:xpath => ".//*[@id='js-download-modal-email']").set 'dep-tester1@headlondon.com'
  #@browser.button(:xpath => ".//*[@id='modal-download']/div/div/button").click
sleep 10

  @browser.element(:css => "li:nth-child(1) li:nth-child(2) .is-downloadable p:nth-child(2) a").click
  #@browser.link(:id => "product-manuals").click
  #Verify page title to be Download electrolux doc page




end


Given(/^that I am a consumer on the product manual page$/) do
  puts @browser.title == "Download your Electrolux documents | Electrolux - NOT FOR COMMERCIAL USE"

end




When(/^I make a search for a manual$/) do

end


Then(/^I should be able to view the product manual returned from the search results$/) do

end
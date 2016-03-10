#require 'watir'

#require 'rubygems'

require "watir-webdriver"

#require 'colorize'

require "rspec/expectations"

browser = Watir::Browser.new :chrome

Given (/^I am on the Fiori homepage$/) do
  #browser = Watir::Browser.new :chrome
  browser.goto "https://webdisp.mo.sap.corp:26000/sap/bc/ui5_ui5/ui2/ushell/shells/abap/FioriLaunchpad.html?search-client=002&branch=11&tester_epm"
  sleep(10)
end
 
  When (/^I Click on Search Button , I Enter a Search Term SAP, the search field, Hit Search Button$/) do
    browser.element(:xpath => ".//*[@id='sf']/span").click
    sleep(20) 
    browser.text_field(:id,"searchFieldInShell-input-inner").set("SAP")
    sleep(10)
    browser.button(:id,"searchFieldInShell-button").click
  end
 
    Then (/^I should see the search Results$/) do
      sleep(20)
      browser.text_field(:id,"__label0").wait_while_present
      Watir::Wait.until { browser.text.include? 'Search Results (24)' }
      #puts "Results are shown".green
      browser.close
    
    end
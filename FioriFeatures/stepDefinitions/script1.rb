require 'watir'

require 'rubygems'

require 'watir-webdriver'

require 'colorize'

browser = Watir::Browser.new :firefox
browser1 = Watir::Browser.new :chrome

#Given I am on the Fiori homepage
 
browser.goto "https://webdisp.mo.sap.corp:26000/sap/bc/ui5_ui5/ui2/ushell/shells/abap/FioriLaunchpad.html?search-client=002&branch=11&tester_epm"
browser1.goto "https://webdisp.mo.sap.corp:26000/sap/bc/ui5_ui5/ui2/ushell/shells/abap/FioriLaunchpad.html?search-client=002&branch=11&tester_epm"

sleep(10)
#end
 
#When Click on Search Button

browser.element(:xpath => ".//*[@id='sf']/span").click
browser1.element(:xpath => ".//*[@id='sf']/span").click
#end
 
#Then The search field should open
 
puts "Search Field Opened".green
 
#end
 
#When Enter a Search Term SAP in the search field and Hit Search Button
 
browser.text_field(:id,"searchFieldInShell-input-inner").set("SAP")
browser1.text_field(:id,"searchFieldInShell-input-inner").set("SAP")

browser.button(:id,"searchFieldInShell-button").click
browser1.button(:id,"searchFieldInShell-button").click
 
#end
 
#Then The search Results should be shown
 
browser.text_field(:id,"__label0").wait_while_present
browser1.text_field(:id,"__label0").wait_while_present

Watir::Wait.until { browser.text.include? 'Search Results (24)' }
Watir::Wait.until { browser1.text.include? 'Search Results (24)' }

puts "Results are shown".green
browser.close
browser1.close
 
#end
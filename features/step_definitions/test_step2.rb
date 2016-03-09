require 'watir'

require 'rubygems'

require 'watir-webdriver'

require 'colorize'

browser = Watir::Browser.new :chrome
 
#Given (/^I am on the Guru99 homepage$/)do
 
browser.goto "http://demo.guru99.com"
 
#end
 
#When (/^enter blank details for Register$/)do
 
browser.text_field(:name,"emailid").set(" ")
 
browser.button(:name,"btnLogin").click
 
#end
 
#Then (/^error email shown$/)do
 
puts " Email is Required".red
 
browser.close
 
#end
 
#When (/^enter details for Register$/)do
 
browser = Watir::Browser.new :chrome
 
browser.goto "http://demo.guru99.com"
 
browser.text_field(:name,"emailid").set("guru99@gmail.com")
 
browser.button(:name,"btnLogin").click
 
#end
 
#Then (/^login details shown$/)do
 
puts " Sucessfully register"
 
browser.close
 
#end
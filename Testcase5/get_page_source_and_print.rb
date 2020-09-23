require 'selenium-webdriver'

#Open Firefox
driver = Selenium::WebDriver.for :firefox

#Navigate to Google.com
driver.get 'https://google.com'
driver.manage.window.maximize

#Print page_source
puts "Page source is #{driver.page_source}"

#Close browser
driver.quit
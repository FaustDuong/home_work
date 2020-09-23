require 'selenium-webdriver'

#Open Firefox
driver = Selenium::WebDriver.for :firefox

#Navigate to Google.com
driver.get 'https://google.com'
driver.manage.window.maximize

#Print current_url
puts "Current URL is #{driver.current_url}"

#Close browser
driver.quit
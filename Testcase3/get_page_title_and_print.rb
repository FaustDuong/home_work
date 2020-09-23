require 'selenium-webdriver'

#Open Firefox
driver = Selenium::WebDriver.for :firefox

#Navigate to Google.com
driver.get 'https://google.com'
driver.manage.window.maximize

#Print page_title
puts "Page title is #{driver.title}"

#Close browser
driver.quit
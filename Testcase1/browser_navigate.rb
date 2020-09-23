require 'selenium-webdriver'

#Open Firefox
driver = Selenium::WebDriver.for :firefox

#Navigate to Google.com
driver.get 'http://google.com'

#Close browser
driver.quit

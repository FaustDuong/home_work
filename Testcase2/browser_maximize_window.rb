require 'selenium-webdriver'

#Open Firefox
driver = Selenium::WebDriver.for :firefox

#Navigate to Google.com
driver.get 'https://google.com'

#Maximize window
driver.manage.window.maximize

#Close browser
driver.quit
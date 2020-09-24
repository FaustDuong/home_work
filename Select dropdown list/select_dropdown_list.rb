require 'selenium-webdriver'

#Launch Firefox
driver = Selenium::WebDriver.for :firefox

#Navigate to Checkout form
driver.get 'http://www.practiceselenium.com/check-out.html'
driver.manage.window.maximize

#Select Visa on dropdown Card Type
dropdown = driver.find_element(id: 'card_type').find_element(xpath: "//option[. = 'Visa']").click
sleep 2

#Select Mastercard on dropdown Card Type
dropdown = driver.find_element(id: 'card_type').find_element(xpath: "//option[. = 'Mastercard']").click
sleep 2

#Select American Express on dropdown Card Type
dropdown = driver.find_element(id: 'card_type').find_element(xpath: "//option[. ='American Express']").click
sleep 2

#Select Diners Club on dropdown Card Type
dropdown = driver.find_element(id: 'card_type').find_element(xpath: "//option[. ='Diners Club']").click
sleep 2

#Close browser
driver.quit
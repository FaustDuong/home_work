require 'selenium-webdriver'

#Open FireFox
driver = Selenium::WebDriver.for :firefox

#Navigate to Google.com
driver.get 'https://google.com'
driver.manage.window.maximize

#Search "iTMS Coaching"
textbox_search = driver.find_element(:xpath, "//input[@name='q']")
textbox_search.send_key "iTMS Coaching"
textbox_search.submit
sleep 2

#get page title
puts "Page Title is #{driver.title}"

#close browser
driver.quit
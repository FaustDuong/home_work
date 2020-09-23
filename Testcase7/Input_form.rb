require 'selenium-webdriver'

#variable
$firstname = 'iTMS'
$lastname = 'Coaching'
$job_title = 'QA'
$date = '10/27/2025'

#Open Firefox
driver = Selenium::WebDriver.for :firefox

#Navigate to https://itmscoaching.herokuapp.com/form
driver.get 'https://itmscoaching.herokuapp.com/form'
driver.manage.window.maximize

#Input Form
driver.find_element(id: 'first-name').send_keys($firstname)
#driver.find_element(id: 'first-name').send_keys($first_name) 
driver.find_element(id: 'last-name').send_keys($lastname)
driver.find_element(id: 'job-title').send_keys($job_title)
driver.find_element(id: 'radio-button-2').click
driver.find_element(id: 'checkbox-1').click
driver.find_element(css: 'option[value="2"]').click
driver.find_element(id: 'datepicker').send_keys($date)
driver.find_element(id: 'datepicker').send_keys :return

#Click Submit
driver.find_element(css: '.btn.btn-lg.btn-primary').click

#Close browser
driver.quit
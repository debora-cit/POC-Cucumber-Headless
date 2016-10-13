require 'rspec'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'httparty'

#Front

chrome_driver = :chrome
Capybara.register_driver chrome_driver do |app|
  Capybara::Selenium::Driver.new(
   app,
   :browser => chrome_driver,
   desired_capabilities: {
      "chromeOptions" => {
       "args" => %w{ no-sandbox }
     }
    }
  )
end
Capybara.default_driver = chrome_driver
Capybara.page.driver.browser.manage.window.maximize

#Services
ENV = ENV['ENV'] || 'local'
ENVIRONMENT = (YAML.load_file('./config/environment.yml'))[ENV]
DEFAULT_DATA = (YAML.load_file('./fixtures/default_data.yml'))


After('@post') do |scenario|
  @response = Exam.new.delete_exam(@id)
end

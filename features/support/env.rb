require 'rspec'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'httparty'

#Front

driver = :chrome

Capybara.default_driver = :selenium
Capybara.register_driver driver do |app|
    Capybara::Selenium::Driver.new(app, :browser => driver)
end

Capybara.javascript_driver = driver
Capybara.default_driver= driver
Capybara.page.driver.browser.manage.window.maximize

#Services
ENV = ENV['ENV'] || 'local'
ENVIRONMENT = (YAML.load_file('./config/environment.yml'))[ENV]
DEFAULT_DATA = (YAML.load_file('./fixtures/default_data.yml'))


After('@post') do |scenario|
  @response = Exam.new.delete_exam(@id)
end

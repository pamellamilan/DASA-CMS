require 'rspec'
require 'page-object'
require 'data_magic'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
#require 'capybara-screenshot/cucumber'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :chrome
end

#Capybara.default_driver = :chrome

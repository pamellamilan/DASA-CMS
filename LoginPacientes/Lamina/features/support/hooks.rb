require 'capybara/dsl'

Before do |cenario|
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

  Capybara.configure do |config|
    config.default_driver = :chrome
  end
end

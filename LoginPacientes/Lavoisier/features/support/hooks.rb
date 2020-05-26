require 'capybara/dsl'

Before do |cenario|
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

  Capybara.configure do |config|
    config.default_driver = :chrome
  end
end


#print da tela
#After do |cenario|
   #if scenario.failed?
    #screenshot = "evidencia/success#{$id}.png"
     #page.save_screenshot(screenshot)
     #embed(screenshot,'image/png','Clique aqui para ver a evidência!')
   #end
#end

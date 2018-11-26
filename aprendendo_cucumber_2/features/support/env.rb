require "capybara/cucumber" # Drivers necessários.
require "selenium-webdriver" # Drivers necessários.

Capybara.register_driver :selenium do
     |app|Capybara::Selenium::Driver.new(app, :browser => :firefox) 
        # Seta o firefox como navegador de teste.
end

Capybara.default_driver = :selenium # Define o SeleniumWebdriver como driver padrão a ser utilizado.
Capybara.default_max_wait_time = 30 # Tempo maximo para abortar se nao houver resposta.


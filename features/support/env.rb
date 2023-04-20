require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

ENVIROMENT = ENV['ENVIROMENT']
puts "Ambiente >> development"

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/enviroments/development.yml") #Aqui digo ele vai estar lendo os arquivos "yaml" do projeto

#Configurações das dependências
Capybara.configure do |config| #Capybara aqui é uma classe,por isso do "C", .configure é um metodo que tem dentro dessa classe 
    #propriedades padrão dentro do config
    case ENV['BROWSER'] #configuração para validar o navegador de execução do teste

     when 'chrome_headless'
    
     config.default_driver = :selenium_chrome_headless
    
     when 'chrome' 
    
     config.default_driver = :selenium_chrome
    
    end
    config.app_host = CONFIG['url_default'] #pagina padrão que sera executada
    config.default_max_wait_time = 10 #aqui ele vai esperar no maximo 10s para cada elemento na tela, se o elemento nao aparecer ele vai falhar
end    
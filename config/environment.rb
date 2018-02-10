ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

#require 'require_all'
require 'capybara/dsl'
#require_all 'app'

require_relative '../app/controllers/application_controller.rb'
#require_relative '../app/views/super_hero.erb'


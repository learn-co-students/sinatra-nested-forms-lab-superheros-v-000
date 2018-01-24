ENV['SINATRA_ENV'] ||= "development"

require 'sinatra/base'
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require_all 'app'

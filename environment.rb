ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_EVN'])

require 'sinatra/base'
require 'sinatra/reloader'

require_all './app'

ENV['SINATRA_ENV'] ||= "development"

require "active_record"
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/heros.sqlite")

require_all 'app'

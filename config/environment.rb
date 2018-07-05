ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require "sinatra/activerecord"
Bundler.require(:default, ENV['SINATRA_ENV'])


configure :development do
  set :database, 'sqlite3:app/db/teams.db'
end

require_all 'app'

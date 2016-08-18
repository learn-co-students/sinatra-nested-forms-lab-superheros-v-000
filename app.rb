require 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :'/app/views/super_hero'
  end
end

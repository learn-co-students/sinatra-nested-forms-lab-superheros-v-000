require_relative './config/environment.rb'

class App < Sinatra::Base

  get '/' do
    erb :super_hero
  end

  post '/display' do
    erb :team
  end

end

require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      # binding.pry
      erb :super_hero
    end

    # get '/superheroes' do
    #   # binding.pry
    #   erb :super_hero
    # end

    post '/teams' do
      erb :team
    end
end

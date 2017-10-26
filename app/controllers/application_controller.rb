require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @new_team = Team.new(params)
      @members = Team.objectify_heroes
      #binding.pry
      erb :team
    end

end

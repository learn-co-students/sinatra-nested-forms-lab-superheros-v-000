require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

      get '/' do
        erb :super_hero
      end

      post '/teams' do
        @team = Team.new(params["team"])
        params["team"]["heroes"].each do |hero_hash|
          Hero.new(hero_hash)
        end
        @heroes = Hero.all
        erb :team
      end
end

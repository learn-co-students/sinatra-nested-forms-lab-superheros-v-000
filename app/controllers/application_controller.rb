require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get '/' do
          erb :super_hero
        end

        post '/teams' do
          @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
          params[:team][:superheroes].each do |hero_data|
            hero = SuperHero.new(hero_data)
          end
          @super_heroes = SuperHero.all
          erb :team
        end
end

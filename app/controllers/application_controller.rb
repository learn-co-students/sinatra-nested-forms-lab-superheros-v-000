require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      
      @teams = params[:team].each do |team|
        Team.new(team)
      end
      @heroes = params[:team][:members].each do |hero|
        Hero.new(hero)
      end
      binding.pry
      erb :team
    end
end

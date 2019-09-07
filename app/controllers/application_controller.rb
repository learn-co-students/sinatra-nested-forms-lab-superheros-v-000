require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params["team"]["name"], params["team"]["motto"])
      @hero_1 = Hero.new(params["team"]["heroes"][0]["name"], params["team"]["heroes"][0]["power"], params["team"]["heroes"][0]["biography"])
      @hero_2 = Hero.new(params["team"]["heroes"][1]["name"], params["team"]["heroes"][1]["power"], params["team"]["heroes"][1]["biography"])
      @hero_3 = Hero.new(params["team"]["heroes"][2]["name"], params["team"]["heroes"][2]["power"], params["team"]["heroes"][2]["biography"])
      #binding.pry
      erb :team
    end
end

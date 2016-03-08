require 'sinatra/base'
require_relative '../models/team'
require_relative '../models/hero'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "..", "views") }

    get '/' do 
      erb :super_hero
    end

    post '/teams' do 
      @team = Team.new(name: params["team"]["name"], motto: params["team"]["motto"])
      params["team"]["heroes"].each do |hero|
        Hero.new(name: hero["name"], power: hero["power"], biography: hero["biography"])
      end
      @hero_1 = Hero.all[-3]
      @hero_2 = Hero.all[-2]
      @hero_3 = Hero.all[-1]
      erb :team
    end
end

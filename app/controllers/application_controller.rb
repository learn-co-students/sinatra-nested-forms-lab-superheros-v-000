require 'sinatra/base'
#require_relative '../models/team.rb'
#require_relative '../models/hero.rb'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
         erb :new_team
    end

    post '/teams' do
        #binding.pry
        @team = Team.create(name: params[:team][:name], motto: params[:team][:motto])
        params[:team][:heros].each do |hero|
            new_hero = Hero.new(hero) 
            new_hero.team = @team
            new_hero.save
        end
        @heros = Hero.all
#        binding.pry
        erb :team
    end
end

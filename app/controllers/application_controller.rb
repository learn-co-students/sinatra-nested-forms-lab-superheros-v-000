require 'pry'
require 'sinatra/base'
require_relative '../models/team.rb'
require_relative '../models/hero.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do 
        erb :team
    end
    
    post "/teams" do 
        @team = Team.new(params[:team])

        @team.hero.each do |hero|
            Hero.new(hero)
        end

        @hero = Hero.all

        #binding.pry
        erb :super_hero
    end

end

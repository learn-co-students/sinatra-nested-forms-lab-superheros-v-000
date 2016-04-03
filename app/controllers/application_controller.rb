require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      
      @team = Team.new(params[:team])#.each do |team|
        #Team.new(team)
      #end
      @hero = Hero.new(params[:team][:members])#.each do |hero|
        #Hero.new(hero)
      #end
      #binding.pry
      @motto_param = "Team Motto:"
      @name_param = "Hero Name:"

      @power_param = "Hero Power:"
      @bio_param = "Hero Biography:" 
      erb :team
    end
end

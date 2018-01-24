require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |hero|
        Hero.new(hero)
      end
      @team_members = Hero.all
      
      @motto_param = "Team Motto: "
      @name_param = "Hero Name: "
      @power_param = "Hero power: "
      @bio_param = "Hero biography: " 
      erb :team
    end
end

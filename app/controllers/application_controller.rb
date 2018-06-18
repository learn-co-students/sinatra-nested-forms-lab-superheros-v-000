require 'sinatra/base'
require './app/models/team.rb'
require './app/models/hero.rb'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
  get '/' do 
    erb :super_hero
  end 
  
  post '/teams' do 
    @team = Team.create(name: params[:team][:name], motto: params[:team][:motto])

    params[:team][:heros].each do |details|
        hero = Hero.create(details)
        hero.team_id = @team.id
        hero.save
      end
  
    @superheroes = @team.heros
    
    erb :team
  end
  
  

end

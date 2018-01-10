require 'sinatra/base'
require './config/environment.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end
  
  post '/teams' do
    
    @team = Team.create(name: params["team"]["name"], motto: params["team"]["motto"])
    @heros = []
    
    params["team"]["members"].each do |member_data|
      new_hero = Hero.create(member_data)
      new_hero.team = @team
      @heros << new_hero
    end
  
    erb :team
  end
  
end

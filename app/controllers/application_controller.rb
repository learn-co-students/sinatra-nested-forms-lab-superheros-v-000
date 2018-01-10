require 'sinatra/base'
require './config/environment.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end
  
  post '/teams' do
    @team = Team.new(params["team"]["name"], params["team"]["motto"])
    
    params["team"]["members"].each do |member_data|
      Hero.new(member_data["name"], member_data["power"], member_data["bio"])
    end
    
    @heroes = Hero.all
    
    erb :team
  end
  

end

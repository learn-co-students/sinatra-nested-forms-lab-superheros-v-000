require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end
  
  post '/teams' do
    @team = Team.new(params[:team])
   
    
    params[:team][:super_hero].each do |details|
      # binding.pry
    SuperHero.new(details)
    
    @superhero = SuperHero.all
    
  end
    erb :team
  end
  
end


require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :super_hero
    end   
    
    post '/team' do
      @team = Team.new(params[:team])
      #binding.pry
      params[:team][:heroes].each do |hero|
        Hero.new(hero)
      end 
      
      @heroes = Hero.all 
      erb :team 
    end
end

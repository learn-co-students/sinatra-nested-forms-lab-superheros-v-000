require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end
    
    
    post '/teams' do
     # binding.pry
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      
       params["team"]["members"].each do |hero|
         
      #heroes = params[:team][:heroes]
      #@super_heroes = heroes.each do |hero|
        Super_hero.new({name: hero[:name], power: hero[:power], bio: hero[:bio]})
      end
      @super_heroes = SuperHero.all
      erb :team
    end
    
end

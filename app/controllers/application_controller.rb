require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end

    post '/teams' do
     @team = Team.new(params[:team][:name], params[:team][:motto] )
      
     params[:team][:hero].each do |hero|
        Hero.new(hero.values[0], hero.values[1], hero.values[2])
     end
     heros = Hero.all
     @hero1 = heros[0]
     @hero2 = heros[1] 
     @hero3 = heros[2] 

     erb :team
    end


end

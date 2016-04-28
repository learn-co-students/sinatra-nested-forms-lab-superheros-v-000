require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end

    post '/teams' do 
      @team = Team.new(params[:team][:name], params[:team][:motto]) 

      params[:team][:hero].each do |hero|
        Superhero.new(hero[:name], hero[:power], hero[:bio])
      end

      @heroes = Superhero.all

      erb :teams
    end
end

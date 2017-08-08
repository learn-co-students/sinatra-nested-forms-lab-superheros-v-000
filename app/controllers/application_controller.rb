require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do 
    	erb :super_hero
    end

    post '/team' do
    	@team_name = params["team_name"]
    	@team_motto = params["team_motto"]
    	@team_members = params["team"].map { |hero| Superhero.new(hero) }
    	erb :team
    end
end

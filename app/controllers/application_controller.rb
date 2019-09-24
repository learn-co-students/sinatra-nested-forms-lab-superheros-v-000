require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    	erb :super_hero
    end

    post '/teams' do
    	@team = Team.new(params[:team][:name],params[:team][:motto])
    	params[:team][:heros].each do |hero_hash|
  			Hero.new(hero_hash[:name], hero_hash[:power], hero_hash[:bio])
    	end
    	erb :team
    end

end

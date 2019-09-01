require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    	erb :super_hero
    end

    post '/teams' do
    	@team = Team.new(params[:team][:name], params[:team][:motto])
    	@heros = params[:team][:members].map do |member|
    		Hero.new(member[:name], member[:power], member[:bio])
    	end
    	erb :team
    end

end

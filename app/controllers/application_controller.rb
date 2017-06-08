require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
    	erb :super_hero
    end

    post '/teams' do 
    	
    	@team = Team.create_from_params(params[:team])
    	@team.create_and_add_members_from_params(params[:team][:members])

    	erb :team
    end

end

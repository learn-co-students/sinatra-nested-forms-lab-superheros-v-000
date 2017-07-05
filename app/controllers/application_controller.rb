require 'sinatra/base'

class App < Sinatra::Base
#have started adding active record but not yet completed 
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
    	erb :index
    end 

    post '/teams' do
    	#Build Teams
    	@team_params = params[:team]
    	@team = Team.new(@team_params)
 		#Build Heroes
    	heroes = params[:team][":heroes"]
    	heroes.each do |h|
    		SuperHero.new(h)
    	end
    	erb :team
    end 

end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

	get '/' do
		erb :index
	end
	
	post '/teams' do
		@team = Team.new(params[:team])
		@team.members.each do |x|
			Hero.new(x)
		end
		erb :teams
	end


end

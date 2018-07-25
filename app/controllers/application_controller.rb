require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

	get '/' do
	  	erb :'team'
	end

	get '/superhero' do
		erb :'super_hero'
	end

	post '/teams' do
		@team = Team.new(params[:team])
		#what is contained with in the params hash?
		#how is @team being implemented and accessed in the model and view?

		#calling #each on :members but not on team
		# how to I iterate through both the inner and outer loops
		# of the nested hash?

		params[:team][:members].each do |details|
			Hero.new(details)
		end
		@members = Hero.all

		erb :super_hero
  	end
end

require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

		@@path = File.join(root, "../views/")
    set :views, Proc.new { File.join(root, "../views/") }
    #set :views, Proc.new { File.join(root, "./views/") }
		

		get '/' do
			@path = @@path
			erb :index
		end

		post '/team' do
			@team_name = params[:team][:name]
			@team_motto = params[:team][:motto]

			@members = params[:team][:members]
			erb :team
		end

end

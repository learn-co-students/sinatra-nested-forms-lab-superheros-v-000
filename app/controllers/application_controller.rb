require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do 
    	erb :super_hero
    end

    post "/teams" do
    	# binding.pry

    	@team = Teams.new(params[:team])

    	params[:team][:hero].each do |hero|
    		player = Heroes.new(hero)
    	end

    	@heroes = Heroes.all 

    	erb :team
    end


end

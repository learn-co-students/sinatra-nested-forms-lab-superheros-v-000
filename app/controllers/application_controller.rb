require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do

    	#must pull each param by using:(method_name: params[:class_name][:method_name]
    	@team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    	#pulled from (name="team[members][][name]")
      	members = params[:team][:members]
      	#@super_heroes is the collection of members. Iterate through the collection of members
      	@super_heroes = members.collect do |member_params|
      		#Assign each member the params
        SuperHero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
      end
    	erb :team
    end


end

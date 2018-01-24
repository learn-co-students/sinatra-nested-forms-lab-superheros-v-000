require 'sinatra/base'
require_relative '../models/member'
require_relative '../models/team'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
		erb :super_hero
    end

    post '/teams' do
    	@team = Team.new(params[:team])
    	@team.members.each do |team_hash|
    		Member.new(team_hash)
    	end
    	@members = Member.all
    	erb :team
    end

end

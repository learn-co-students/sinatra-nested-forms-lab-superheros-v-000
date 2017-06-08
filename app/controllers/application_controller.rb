require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    	erb :super_hero
    end

    post '/teams' do
    	@team = Team.new(params[:team])
    	params[:team][:member].each { |member_details| SuperHero.new(member_details) }

        @super_hero = SuperHero.all
        erb :team   
    end



end

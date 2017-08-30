require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
    	erb :super_hero
    end

    get '/team/:id' do 
        tid = params[:id].gsub(/[^\d]/, "").to_i
        @team = Team.find(params[:id])

        erb :team
    end

    post '/teams' do 
    	
    	@team = Team.new({name: params[:team][:name], motto: params[:team][:motto]})
        @team.super_heros.build(params[:team][:members])
        @team.save

    	redirect to :"/team/#{@team.id}"
    end

end

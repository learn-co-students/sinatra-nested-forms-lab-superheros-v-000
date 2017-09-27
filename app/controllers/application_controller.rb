require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/teams' do
        # binding.pry
        @team = Team.new(params[:team])
        
        params[:team][:heros].each do |details|
            Hero.new(details)
            # binding.pry
        end
        @all_heros = Hero.all
        
        erb :team
    end
end
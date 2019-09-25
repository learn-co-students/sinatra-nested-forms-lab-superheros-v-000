require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero_1 = params[:team][:members][0]
      @hero_2 = params[:team][:members][1]
      @hero_3 = params[:team][:members][2]
      erb :team
    end
end

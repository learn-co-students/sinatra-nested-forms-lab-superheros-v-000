require 'sinatra/base'
require "./app/models/heroes"

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end
    
    post '/teams' do
      @team_motto = params[:team][:motto]
      @team_name = params[:team][:name]
      params[:team][:members].each do |x|
        Hero.new(x)
      end
      erb :team
    end
end

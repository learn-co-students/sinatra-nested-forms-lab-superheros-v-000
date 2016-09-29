require 'sinatra/base'
require './config/environment'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      status 200
      erb :super_hero
    end

    post "/teams" do
      status 200
      @team = Team.new(params[:team][:name],params[:team][:motto])
      params[:team][:members].each do |hero|
        Superhero.new(hero[:name],hero[:power],hero[:bio])
      end
      @heroes = Superhero.all
      erb :team
    end

end

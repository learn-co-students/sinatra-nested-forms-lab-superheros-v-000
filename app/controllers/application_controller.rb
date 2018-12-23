require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team=Team.new(params["team"]["name"], params["team"]["motto"])

      params["team"]["hero"].each do |data|
        Hero.new(data["name"], data["power"], data["bio"])
      end

      @heroes = Hero.all

      erb :team
    end

end

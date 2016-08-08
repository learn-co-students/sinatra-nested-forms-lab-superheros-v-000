require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end

    post '/' do
      @team = Team.create(name: params[:team][:name], motto: params[:team][:motto])
      params[:team][:heros].map do |hero_details|
        Hero.create(hero_details)
      end

      erb :team
    end

end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :new
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |hero_details|
        Hero.new(hero_details)
      end
      @members = Hero.all

      erb :team
    end

end

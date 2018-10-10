require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    require './config/environment'

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
        params[:team][:members].each do |details|
          Hero.new(details)
        end
        @members = Hero.all

      erb :team
    end

end

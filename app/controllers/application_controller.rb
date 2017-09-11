require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :form
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |info|
        Hero.new(info)
      end

      @heroes = Hero.all

      erb :team
    end

end

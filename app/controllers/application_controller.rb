require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'index'

    end

    post '/team' do
      @team = Team.new(params[:team])

      params[:team][:heroes].each do |details|
        Hero.new(details)
      end
      @heroes = Hero.heroes
      erb :'team'
    end


end

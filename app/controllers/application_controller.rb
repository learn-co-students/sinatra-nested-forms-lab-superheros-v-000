require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:hero].each do |hero|
        SuperHero.new(hero)
      end
      @heroes = SuperHero.all

      erb :teams
    end


end

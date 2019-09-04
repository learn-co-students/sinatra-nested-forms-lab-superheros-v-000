require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    get '/teams' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:super_heroes].each do |details|
        SuperHero.new(details)
      end

      @heroes = SuperHero.all
      erb :team
    end

end

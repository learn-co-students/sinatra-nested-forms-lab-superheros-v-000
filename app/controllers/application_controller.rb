require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :create_team
    end

    post '/team' do
      @team = Team.new(params)

      params[:team][:heroes].each do |hero|
        SuperHero.new(hero)
      end

      @heroes = SuperHero.all

      erb :display_team
    end

    get '/team' do
      erb :display_team
    end

end

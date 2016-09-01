require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :index
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:heroes].each do |hero|
        SuperHero.new(hero)
      end

      @heroes = SuperHero.all
      binding.pry
      erb :team
    end

end

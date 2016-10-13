require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params[:team][:name], params[:team][:motto])
      params[:team][:members].each do |hero|
        SuperHero.new(hero[:name], hero[:power], hero[:bio])
      end
      @heroes = SuperHero.all
      #binding.pry
      erb :team
    end

end

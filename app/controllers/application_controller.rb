require 'sinatra/base'
require './config/environment'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do

      @team = Team.new(params[:team])

        params[:team][:members].each do |params|
          SuperHero.new(params)
        end
        @heroes = SuperHero.all

      erb :team
    end

end

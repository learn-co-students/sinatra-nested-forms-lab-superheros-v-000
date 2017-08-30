require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

   get '/' do
     erb :root
   end

    get '/new' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |details|
        SuperHero.new(details)
      end

      @heroes = SuperHero.all

      erb :team
    end




end

require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'super_hero'
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][':heros'].each do |hero_data|
        hero = Hero.new(hero_data)
        @heros = Hero.all
      end
      @heros
    end


end

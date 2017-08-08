require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'super_hero'
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      params[:team][:heros].each do |hero_data|
        Hero.new(hero_data)
      end
      @heros = Hero.all
      erb :'team'
    end


end

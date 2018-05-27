require 'sinatra/base'
require_relative '../models/super_heros.rb'
require_relative '../models/team.rb'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get '/' do
      erb :super_hero
    end
    get '/teams' do
      erb :super_hero
    end
    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:heros].each do |details|
        Super_hero.new(details)
      end
      @heros = Super_hero.all
      erb :team
    end
end

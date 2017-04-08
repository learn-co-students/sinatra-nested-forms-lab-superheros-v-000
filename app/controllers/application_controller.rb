require 'sinatra/base'
require './config/environment'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:hero].each do |d|
        Hero.new(d)
      end

      @heros = Hero.all

      erb :team
    end
end

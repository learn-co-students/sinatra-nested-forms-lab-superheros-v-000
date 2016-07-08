require 'sinatra/base'
require './app/models/team.rb'
require './app/models/hero.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:hero].each do |details|
        Hero.new(details)
      end
      @members = Hero.all
      erb :team
    end

end

require 'sinatra/base'
require_relative '../models/hero.rb'
require_relative '../models/team.rb'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:members].each do |mem, details|
        Hero.new(mem)
      end
      @heroes = Hero.all
      erb :team
    end
end

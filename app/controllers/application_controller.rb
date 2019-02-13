require 'sinatra/base'
require_relative '../models/team.rb'
require_relative '../models/hero.rb'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @params = params
    @team = Team.new(params[:team])

    params[:team][:heroes].each {|hero|
      Hero.new(hero)
    }

    @heroes = Hero.all

    erb :team
  end


end

require 'sinatra/base'
require_relative '../models/superhero.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]

    params[:team][:heros].each do |info|
      SuperHero.new(info)
    end

    @heros = SuperHero.all

    erb :team
  end
end

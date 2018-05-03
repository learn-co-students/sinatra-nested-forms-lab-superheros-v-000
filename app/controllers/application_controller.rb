require 'sinatra/base'
# require_relative '../models/team'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  post '/teams' do

    @team = Team.new(params["team"])
    @heroes = []

    params["team"]["heroes"].each do |hero_detail|
      @heroes << Super_hero.new(hero_detail)
    end

    erb :team
  end

end

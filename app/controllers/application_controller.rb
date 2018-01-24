require 'sinatra/base'
require_relative '../models/hero.rb'
require_relative '../models/team.rb'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    
    params[:team][:members].each do |member|      
      new_hero = Hero.new(name: member[:name], power: member[:power], bio: member[:bio])
      @team.add_hero(new_hero)
    end

    erb :team
  end

end
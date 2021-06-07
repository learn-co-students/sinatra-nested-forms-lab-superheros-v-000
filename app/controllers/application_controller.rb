require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    # binding.pry
    @team = Team.new(params[:team])

    params[:team][:members].each do |details| 
      @hero = Hero.new(details)
      binding.pry
    end

    @heroes = Hero.all
    # binding.pry
    erb :team
  end
end


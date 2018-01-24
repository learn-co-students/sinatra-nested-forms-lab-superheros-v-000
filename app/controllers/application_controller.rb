require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      team_name, team_motto = params[:team].values
      @team = Team.new(team_name, team_motto)

      params[:team][:hero].each do |hero|
        name, power, bio = hero.values
        SuperHero.new(name, power, bio)
      end

      @heroes = SuperHero.all

      erb :team
    end

end

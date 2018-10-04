require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(params)

        params[:team][:heros].each do |hero|
            new_hero = Hero.new(hero)
            new_hero.assign_team(@team)
        end

        @heros = Hero.all

        # binding.pry

        erb :team
    end


end

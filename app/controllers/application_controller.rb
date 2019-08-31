require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new
      @team.name = params[:team][:name]
      @team.motto = params[:team][:motto]

      params[:team][:heros].each do |hero|
        @hero = Hero.new
        @hero.name = hero[:name]
        @hero.power = hero[:power]
        @hero.bio = hero[:bio]
      end

      @heros = Hero.all

      erb :teams
    end
end

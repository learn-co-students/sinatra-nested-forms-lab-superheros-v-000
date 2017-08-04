require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :new
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:members].each do |details|
        super_hero = SuperHero.new(details)
        super_hero.team = @team
        @team.members.push(super_hero)
      end

      erb :team
    end
end

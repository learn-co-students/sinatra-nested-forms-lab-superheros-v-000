require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post "/teams" do
      @team = Team.new(params[:team])

      params[:team][:members].each do |details|
        SupeHero.new(details).assign_team(@team)
      end

      @heroes = SupeHero.all
      erb :team
    end
end

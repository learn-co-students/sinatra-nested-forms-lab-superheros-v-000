require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/teams" do
      @team = Team.new(params[:team])
      @super_heroes = params[:team][:members].map { |member_details| SuperHero.new(member_details) }

      erb :team
    end
end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :team
    end

    post "/teams" do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      params[:team][:heros].each do |details|
        Team.new(details)
      end

      @teams = Team.all

      erb :super_hero
    end

end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @hero_name = []
      @hero_power = []
      @hero_biography = []
      @team_mates = params[:team][:heroes]
      @team_mates.each do |hero|
        @hero_name << hero[:name]
        @hero_power << hero[:power]
        @hero_biography << hero[:biography]
      end

      erb :team
    end


end

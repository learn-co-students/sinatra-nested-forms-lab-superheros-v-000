require 'sinatra/base'
require './config/environment'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @team_members = []
      @hero_names = []
      @hero_powers = []
      @hero_biographies = []
      @heroes = params[:team][:hero]
      @heroes.each do |hero|
        @hero_names << hero[:name]
        @hero_powers << hero[:power]
        @hero_biographies << hero[:biography]
      end
      @count = @heroes.size.to_i
      erb :team
    end

end

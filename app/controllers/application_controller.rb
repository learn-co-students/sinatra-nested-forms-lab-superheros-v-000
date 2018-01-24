require 'sinatra/base'
require 'pry'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end

    post '/teams' do 
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      
      @heroes = params[:team][:heroes]
      @hero_name = []
      @hero_power = []
      @hero_bio = []

      @heroes.each do |h|
        @hero_name << h[:name]
        @hero_power << h[:power]
        @hero_bio << h[:biography]
      end
     


      erb :team

    end


end

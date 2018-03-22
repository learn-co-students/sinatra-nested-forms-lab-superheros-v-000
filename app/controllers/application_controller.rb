require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      #shows to data
      #instantiates instance variables and creates objects
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]



      params[:team][:heroes].each do |details|
        Hero.new(details)
      end

      @heroes = Hero.all
      erb :team
    end



end

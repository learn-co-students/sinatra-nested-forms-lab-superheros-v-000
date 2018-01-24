require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

      erb :super_hero
    end

    post '/teams' do

      @members = params[:team][:members]

      @hero_name = []
      @hero_power = []
      @hero_bio = []

      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @members.each do |hero|
          @hero_name << hero[:name]
          @hero_power << hero[:power]
          @hero_bio << hero[:biography]
      end

      erb :team
    end

end

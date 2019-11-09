require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :"super_hero"
    end

    post '/teams' do

      @hero_team = Team.new
      @hero_team.name = params[:team][:name]
      @hero_team.motto = params[:team][:motto]

      params[:team][:heroes].each do |att_data|
        new_hero = Hero.new(att_data)
        @hero_team.heroes << new_hero

      end




      erb :"team"
    end


end

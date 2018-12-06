require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :"/super_hero"
    end

    post '/team' do
      @team = Team.new(params)

      @hero_1 = Hero.new(name: params[:team][:hero][0][:name], power: params[:team][:hero][0][:power], biography: params[:team][:hero][0][:biography])
      @hero_2 = Hero.new(name: params[:team][:hero][1][:name], power: params[:team][:hero][1][:power], biography: params[:team][:hero][1][:biography])
      @hero_3 = Hero.new(name: params[:team][:hero][2][:name], power: params[:team][:hero][2][:power], biography: params[:team][:hero][2][:biography])

      erb :team
    end
end

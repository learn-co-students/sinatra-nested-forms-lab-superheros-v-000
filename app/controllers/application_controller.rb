require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :"../views/super_hero"
    end

    post '/teams' do
      @team = Team.new(params[:team])
      #binding.pry
      params[:team][:members].each do |member|
        Hero.new(member)
      end

      @heroes = Hero.all
      erb :"../views/team"
    end
end

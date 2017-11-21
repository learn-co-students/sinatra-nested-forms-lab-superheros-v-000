require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      #binding.pry
      @team_info = params[:team]
      @hero1 = params[:team][:heroes].first
      @hero2 = params[:team][:heroes][1]
      @hero3 = params[:team][:heroes][2]
      #binding.pry
      erb :team
    end

end

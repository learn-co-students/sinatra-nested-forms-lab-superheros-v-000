require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

      erb :super_hero
    end

    post '/teams' do
      Team.new(params[:team])
      @teams = Team.all

      erb :team
    end


end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end
      #  binding.pry
      post '/teams/' do

        @team = Team.new(params[:name],params[:motto])
        erb :'teams/team'
    end










end

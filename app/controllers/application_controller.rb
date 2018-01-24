require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :"../models/index"
    end

    post '/teams' do
      @team = params[:team]

      erb :"../models/teams"
    end

end

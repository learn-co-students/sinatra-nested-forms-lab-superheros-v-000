require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :form
    end

    post '/teams' do
      @team = Team.new(params[:team])
      @heros = params[:team][:members]

      erb :super_hero
    end

end

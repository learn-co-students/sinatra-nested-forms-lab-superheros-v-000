require 'sinatra/base'
require_relative "../models/member"
require_relative "../models/team"

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end

    post '/teams' do
      @team = params[:team]

    erb :team

    end


end

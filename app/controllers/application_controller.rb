require 'sinatra/base'
#require '../../models/team'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      binding.pry
      erb :"models/team"
    end


end

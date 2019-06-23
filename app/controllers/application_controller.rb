require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :'../views/super_hero'
    end

    post '/teams' do
      #binding.pry
      @team_name = params['team']['name']
      @team_motto = params['team']['motto']
      @team_members = params['team']['members']
      erb :'../views/team'

    end
end

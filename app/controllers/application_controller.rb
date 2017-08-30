require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    post '/teams' do
      #change new and build to create for persistence
      @team  = Team.create(name: params[:team][:name], motto: params[:team][:motto])
      params[:team][:members].each do |member|
        @team.heros.create(member) # adds it to team.members
      end
      erb :team
    end
end

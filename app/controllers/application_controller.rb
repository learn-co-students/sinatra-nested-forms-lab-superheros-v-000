require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      @member_num = [1,2,3]
      erb :super_hero
    end

    post '/teams' do
      @team_name = params["team"]["name"]
      @team_motto = params["team"]["motto"]
      @team_members = params["team"]["members"]
      erb :team
    end

end

require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      team = params["team"]
      @team_name = team["name"]
      @team_motto = team["motto"]
      
      members = params["team"]["members"]
      @member1_name = members[0]["name"]
      @member1_power = members[0]["power"]
      @member1_bio = members[0]["bio"]
      @member2_name = members[1]["name"]
      @member2_power = members[1]["power"]
      @member2_bio = members[1]["bio"]
      @member3_name = members[2]["name"]
      @member3_power = members[2]["power"]
      @member3_bio = members[2]["bio"]

      erb :super_hero
    end

end

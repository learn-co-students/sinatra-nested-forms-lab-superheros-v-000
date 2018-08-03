require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end
    post '/teams' do
      @team_name = params["team"]["name"]
      @team_motto = params["team"]["motto"]
      @h1n = params["team"]["members"][0]["name"]
      @h1p = params["team"]["members"][0]["power"]
      @h1b = params["team"]["members"][0]["bio"]
      @h2n = params["team"]["members"][1]["name"]
      @h2p = params["team"]["members"][1]["power"]
      @h2b = params["team"]["members"][1]["bio"]
      @h3n = params["team"]["members"][2]["name"]
      @h3p = params["team"]["members"][2]["power"]
      @h3b = params["team"]["members"][2]["bio"]
      erb :team
    end
end

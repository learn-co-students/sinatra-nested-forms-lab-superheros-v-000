require 'sinatra/base'
require_relative "../models/hero"
require_relative "../models/team"


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
        erb :new_team
    end

    post "/teams" do
        @team = Team.new(params[:team])
        erb :team
    end

end

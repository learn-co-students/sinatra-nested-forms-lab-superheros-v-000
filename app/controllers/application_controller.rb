require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :form
    end

    post "/teams" do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @heroes = params[:team][:heros]
      erb :team
    end


end

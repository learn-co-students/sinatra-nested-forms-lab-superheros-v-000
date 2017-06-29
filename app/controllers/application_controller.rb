require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :team
    end

    post "/team" do
      @team = Team.new(params[:team][:name],params[:team][:motto])
      params[:team][:member].each do |member_hash|
        @team.add_hero(member_hash[:name], member_hash[:power], member_hash[:bio])
      end
      erb :super_hero
    end
end

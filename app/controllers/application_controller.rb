require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
       erb :super_hero
    end


    post "/teams" do

      hash = params[:team]
      @team = Team.new(hash[:name], hash[:motto])
      hash[:member].each do |each|
        Member.new(each[:name], each[:power], each[:bio])
      end
      @members = Member.all

      erb :team
    end


end

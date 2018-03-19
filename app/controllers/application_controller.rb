require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/teams" do

      @team = Team.new(params[:team])

      params[:team][:members].each do |stats|
        Member.new(stats)
      end

      @members = Member.all
    
      erb :team
    end

end

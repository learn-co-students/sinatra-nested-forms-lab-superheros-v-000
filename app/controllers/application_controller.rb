require 'sinatra/base'
require './config/environment'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }



    get '/' do
      erb :create_team
    end

    post '/teams' do
      puts params
      @team = Team.new(params[:team])
      params[:team][:members].each do |details|
        Member.new(details)
      end
      @members = Member.all
      erb :teams
    end

end

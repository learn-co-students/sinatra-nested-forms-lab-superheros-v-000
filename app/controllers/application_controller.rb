require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params)
      params[:team][:members].each do |member, info|
        Members.new(member)
      end
      @members = Members.all
      erb :team
    end


end

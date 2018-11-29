require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'super_hero'
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |member_details|
        SuperHero.new(member_details)
      end

      @members = SuperHero.all

      erb :'team'
    end

end

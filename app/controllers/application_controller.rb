require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(params[:team])
      members = params[:team][:members]
      @super_heros = members.collect do |m|
        SuperHero.new(m)
      end
      erb :team
    end
end

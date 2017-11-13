require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do

      @team = Team.new (params[:team])

      params[:team][:hero].each do |detail|
        SuperHero.new(detail)
      end
      @heros = SuperHero.all
    
      erb :team
    end


end

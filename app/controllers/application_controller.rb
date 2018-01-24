require 'sinatra/base'

class App < Sinatra::Base

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |details|
        Superhero.new(details)
      end

      @members = Superhero.all

      erb :team
    end

    set :views, Proc.new { File.join(root, "../views/") }

end

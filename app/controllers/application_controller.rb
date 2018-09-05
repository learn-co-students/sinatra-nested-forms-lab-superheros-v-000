require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params)

      params[:team][:members].each do |member_details|
        superhero = Superhero.new(member_details)
      end

      @superheros = Superhero.all

      erb :team
    end

end

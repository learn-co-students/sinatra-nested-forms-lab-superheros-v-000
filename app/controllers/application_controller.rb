require 'sinatra/base'

class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      @heroes_details = params[:team][:members]
      @heroes = @heroes_details.collect do |details|
        Hero.new(details)
      end
      
      erb :team
    end
end

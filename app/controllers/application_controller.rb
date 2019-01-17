require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      # binding.pry
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      @superheros = params[:team][:members].collect do |member|
        Superhero.new(name: member[:name], power: member[:power], bio: member[:bio])
      end

      erb :team
    end

end

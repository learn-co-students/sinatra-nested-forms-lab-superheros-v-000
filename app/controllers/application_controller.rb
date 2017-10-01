require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      Superhero.clear
      params[:team][:heros].each do |hero|
        Superhero.new(hero[:name], hero[:power], hero[:bio])
      end

      @heros = Superhero.all
      erb :team
    end
end

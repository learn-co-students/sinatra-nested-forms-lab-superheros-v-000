require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index

      redirect to "/teams"
    end

    get '/super_hero/:id' do
      @team = Team.find(params[:id])

      erb :super_hero
    end

    post '/teams' do
      team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      params[:team][:heroes].each do |hero_data|
        hero = Hero.create(hero_data)
        hero.team = team
      end
      erb :team
    end

end

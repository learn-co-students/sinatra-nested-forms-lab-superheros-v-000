require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
    @team = Team.new(params[:team][:name], params[:team][:motto])
    @teams = Team.all
  
    params[:team][:members].each do |data|
      hero = Hero.new(data)
    end
    @heroes = Hero.all

      erb :team
    end

end

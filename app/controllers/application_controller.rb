require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team][:name], params[:team][:motto])

    @heroes = []
    params[:team][:heroes].each do |hero|
      @heroes << Hero.new(hero[:name], hero[:power], hero[:bio])
    end

    erb :team
  end
end

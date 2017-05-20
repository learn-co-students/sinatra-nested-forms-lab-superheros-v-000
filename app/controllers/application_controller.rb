require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    # make stuff
    @team = Team.new(params[:team])
    params[:team][:heroes].each do |h|
      hero = Hero.new(h)
      @team.heroes << hero
    end

    erb :team
  end
end

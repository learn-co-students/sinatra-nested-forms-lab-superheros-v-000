require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    @number = %w[1 2 3]
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team])
    params[:hero].each do |hero, details|
      Hero.new(details)
    end
    @heros = Hero.all

    erb :team
  end
end

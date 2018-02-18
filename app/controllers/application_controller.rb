require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team])
    members = params[:team][:member]
    @super_heroes = members.collect do |member|
      SuperHero.new(member)
    end
    erb :team
  end
end

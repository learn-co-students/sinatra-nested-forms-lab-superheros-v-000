require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      heroes = params["team"].delete("heroes")
      @team = Team.new(params["team"])
      heroes.each {|hero| Hero.new(hero)}
      erb :team
    end

end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
# binding.pry
    @team = Team.new(params[:team])

    params[:team][:heroes].each{|hero|
      SuperHero.new(hero)
    }

    @heroes = SuperHero.all

    erb :team
  end

  get '/teams' do
    erb :team
  end

end

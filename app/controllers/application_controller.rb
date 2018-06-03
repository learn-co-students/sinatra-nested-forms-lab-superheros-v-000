require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/teams") }

  get '/' do
    erb :new
  end

  post '/teams' do

    @team = Team.new(params[:team])
    #binding.pry
    params[:team][:heros].each do |details|

      SuperHero.new(details)
    end

    @super_heros = SuperHero.all
    erb :show
  end
end

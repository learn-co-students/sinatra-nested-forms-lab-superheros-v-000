require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'/team'
    end

    post '/teams' do
        #binding.pry
      @team = Team.new(params[:team])
    #this will create team from the model

  #binding.pry
      params[:team][:members].each do |hero|
      Superhero.new(hero)
      end
      @hero = Superhero.all
      erb :'/show'
    end
end

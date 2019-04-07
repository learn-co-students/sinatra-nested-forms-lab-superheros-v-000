require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
  get '/' do
    erb :'super_hero'
  end
  
  post '/teams' do
    @superheroes = params[:team][:hero]
    @superheroes.each do |hero|
      @new_hero = Superhero.new(hero)
    end
    @team = Team.new(params)
    erb :'team'
  end
end

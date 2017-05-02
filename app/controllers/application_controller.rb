require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
    erb :index
  end

  post '/teams' do 
    @team = Team.new(params[:team])
    user_input = params[:team][:members]
    user_input.each do |hero|
      SuperHero.new(hero)
    end

    # binding.pry
    @team_members = SuperHero.all
    erb :team
  end

end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params)

      params[:team][:members].each do |superhero|
      Superhero.new(superhero)
      end

      @superheroes = Superhero.all

      erb :team
    end
end

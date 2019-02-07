require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    get '/teams' do
        @team = Team.new(args[:team])

        params[:team][:superheroes].each do |details|
            Superhero.new(details)
        end

        @superheroes = Superhero.all

        erb :team
    end
end

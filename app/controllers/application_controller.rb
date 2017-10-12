require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get  '/' do
        @teams = Team.all
        erb :index
    end

    get '/new' do
        erb :new
    end

    post '/teams' do
        @team = Team.create(name: params[:team][:name], motto: params[:team][:motto])
        params[:team][:superheros].each do |superhero|
            Superhero.create(superhero)
        end

        @superheros = Superhero.all

        erb :team
    end

        get '/teams/:id' do
        @team = Team.find(params[:id])
        erb :show
    end





end

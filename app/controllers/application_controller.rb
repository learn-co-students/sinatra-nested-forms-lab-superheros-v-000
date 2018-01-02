require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(params[:team])
      @superheroes = params[:team][:superheroes].collect do |details|
        Superhero.new(details)
      end

      erb :show

    end

end

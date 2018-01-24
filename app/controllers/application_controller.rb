require 'sinatra/base'

class App < Sinatra::Base

    # I think this line just tells Ruby where the "views"
    # directory is. e.g., erb :super_hero vs. erb :"views/super_hero"
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      params[:team][:members].each do |member|
        Superhero.new(member[:name], member[:power], member[:biography])
      end

      @members = Superhero.all

      erb :team
    end

end

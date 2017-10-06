require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      params[:team][:hero].each do |superheroes|
        name = superheroes[:name]
        power = superheroes[:power]
        bio = superheroes[:biography]
        yo = Superhero.new(name, power, bio)
      end
      @new_team = Team.new(params[:team][:name], params[:team][:motto])
      erb :team
    end



end

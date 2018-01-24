require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      t = params[:team]
      s = t[:super_heroes]
      @team = Team.new(t[:name],t[:motto])
      s.each do |super_hero|
        SuperHero.new(super_hero[:name],super_hero[:power],super_hero[:bio])
      end
      @super_heroes = SuperHero.all
      erb :super_hero
    end

end

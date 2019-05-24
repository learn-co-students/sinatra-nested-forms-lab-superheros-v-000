require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

      erb :super_hero
    end

    post '/team' do
        @team = Team.new(name: params[:team][:name],motto: params[:team][:motto])

        hero = params[:team][:members]
        @super_heroes = hero.map { |hero_params| SuperHero.new({name: hero_params[:name], power: hero_params[:power], bio: hero_params[:bio]})}
      erb :team
    end

end

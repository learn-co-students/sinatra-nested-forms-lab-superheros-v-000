require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params[:team])
      puts @team
      puts params[:team][:name]
      @heroes = params[:team][:heroes].collect do |hero|
        Hero.new(hero)
      end

      erb :team
    end


end

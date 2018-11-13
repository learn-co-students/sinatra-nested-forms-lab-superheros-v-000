require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :superheroform
    end

    post "/teams" do
      @team = Team.new(params[:team][:name], params[:team][:motto])
      params[:team][:heros].each do |hero_info|
        Hero.new(hero_info)
      end
      @heroes = Hero.all
      erb :team
    end

end

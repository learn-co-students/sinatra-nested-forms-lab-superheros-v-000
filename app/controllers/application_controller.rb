require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get "/" do
    erb :super_hero
  end

  post "/teams" do
    params[:team][:members].each do |hero_details|
      Superhero.new(hero_details)
    end

    @heros = Superhero.all

    erb :team
  end

end

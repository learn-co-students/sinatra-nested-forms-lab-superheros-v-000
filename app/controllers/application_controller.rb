require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do
    erb :index
  end

  post "/team" do
    @team = Team.new(params[:team])

    params[:team][:heroes].each do |atr|
      Hero.new(atr)
    end

    @heroes = Hero.all

    erb :team
  end

end

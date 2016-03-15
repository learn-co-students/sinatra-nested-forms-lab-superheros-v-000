require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:heros].each do |x|
        Hero.new(x)
      end
      @heros =Hero.all

      erb :super_hero
    end

end

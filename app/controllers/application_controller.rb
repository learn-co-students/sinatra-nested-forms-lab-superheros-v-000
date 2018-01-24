require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    # post '/teams' do
    #   erb :team
    # end

    post '/teams' do
      @team = Team.new(params[:team])
      @heros = Hero.all
      params[:team][:hero].each do |details|
        Hero.new(details)
      end
      
      erb :team
    end

end

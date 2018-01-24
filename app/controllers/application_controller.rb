require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:member].each do |hero_args|
        Member.new(hero_args)
      end

      @heros = Member.all

      erb :super_hero
    end
end

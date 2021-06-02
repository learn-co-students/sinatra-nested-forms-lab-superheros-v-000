require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params[:team])
      members = params[:team][:members]
      @super_heros = members.collect do |member_params|
        SuperHero.new(member_params)
      end
      erb :team
    end

end

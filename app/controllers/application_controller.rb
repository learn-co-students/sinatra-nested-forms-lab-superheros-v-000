require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'/super_hero'
    end

    post '/team' do

      @new_team = Team.new(params[:team])

      params[:team][:members].each do |details|

        Hero.new(details)
      end

      @heros = Hero.all

      erb :'/team'
    end

end

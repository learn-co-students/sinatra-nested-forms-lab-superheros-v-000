require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/' do
      @team = Team.new(params)
      params[:team][:hero].each_with_index do |hero_data, index|
        Hero.new(hero_data)
      end
      erb :team
    end

end

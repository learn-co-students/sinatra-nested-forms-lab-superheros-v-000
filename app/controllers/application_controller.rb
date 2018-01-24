require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      params[:team][:superheroes].each do |details|
        SuperHero.new(details)
      end
      @superheroes = SuperHero.superheroes
      erb :team
    end


end

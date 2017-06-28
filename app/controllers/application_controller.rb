require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @hero_names = []
      @hero_powers = []
      @hero_bios = []
      @superheroes = params[:team][:members]
      
      @superheroes.each do |details|
        @hero_names << details[:name]
        @hero_powers << details[:power]
        @hero_bios << details[:bio]
      end

      erb :team
    end

end

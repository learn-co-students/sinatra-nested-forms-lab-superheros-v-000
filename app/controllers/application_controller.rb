require 'sinatra/base'
require 'pry'

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
        params[:team][:hero].each do |hero|
        @hero_names << hero[:name]
        @hero_powers << hero[:power]
        @hero_bios << hero[:bio]
        end
        erb :team
        end

end

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
      @team_members = params[:team][:hero]
      @hero_name = []
      @hero_bio = []
      @hero_power = []
      
      @team_members.each do |hero|
        @hero_name << hero[:name]
        @hero_bio << hero[:bio]
        @hero_power << hero[:power]
      end
      erb :team
    end

end

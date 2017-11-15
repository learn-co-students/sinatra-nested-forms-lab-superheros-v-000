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

    @hero_name = []
    @hero_power = []
    @hero_bio = []

    @team_members = params[:team][:members]
    @team_members.each do |h|
      @hero_name << h[:name]
      @hero_power << h[:power]
      @hero_bio << h[:bio]
    end
    erb :team
  end
end #of class App

require 'sinatra/base'

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
    @members = params[:team][:members]
    @members.each do |person|
      @hero_name << person[:name]
      @hero_power << person[:power]
      @hero_bio << person[:bio]
    end
    erb :team
  end

end

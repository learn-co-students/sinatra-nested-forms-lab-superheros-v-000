require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :team
  end

  post '/teams' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]

    @hero_name_1 = params[:team][:members][0][:name]
    @hero_power_1 = params[:team][:members][0][:power]
    @hero_bio_1 = params[:team][:members][0][:biography]

    @hero_name_2 = params[:team][:members][1][:name]
    @hero_power_2 = params[:team][:members][1][:power]
    @hero_bio_2 = params[:team][:members][1][:biography]

    @hero_name_3 = params[:team][:members][2][:name]
    @hero_power_3 = params[:team][:members][2][:power]
    @hero_bio_3 = params[:team][:members][2][:biography]

    erb :super_hero
  end

end

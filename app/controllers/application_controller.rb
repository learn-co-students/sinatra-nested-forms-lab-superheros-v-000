require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @h1_name = params[:team][:members][0][:name]
      @h1_power = params[:team][:members][0][:power]
      @h1_bio = params[:team][:members][0][:bio]

      @h2_name = params[:team][:members][1][:name]
      @h2_power = params[:team][:members][1][:power]
      @h2_bio = params[:team][:members][1][:bio]

      @h3_name = params[:team][:members][2][:name]
      @h3_power = params[:team][:members][2][:power]
      @h3_bio = params[:team][:members][2][:bio]
      erb :team
    end
end

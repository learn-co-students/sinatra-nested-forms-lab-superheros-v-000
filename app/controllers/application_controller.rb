require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      #binding.pry
      @team_name =  params[:team][:name]
      @team_motto = params[:team][:motto]

      @hero_name1 = params[:team][:member][0][:name]
      @hero_power1 = params[:team][:member][0][:power]
      @hero_bio1 = params[:team][:member][0][:bio]

      @hero_name2 = params[:team][:member][1][:name]
      @hero_power2 = params[:team][:member][1][:power]
      @hero_bio2 = params[:team][:member][1][:bio]

      @hero_name3 = params[:team][:member][2][:name]
      @hero_power3 = params[:team][:member][2][:power]
      @hero_bio3 = params[:team][:member][2][:bio]

      erb :team
    end

    get '/teams' do
      erb :team
    end

end

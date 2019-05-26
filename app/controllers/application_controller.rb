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
      params[:team][:members].each do |m|
        @hero_name << m[:name]
        @hero_power << m[:power]
        @hero_bio << m[:bio]
      end

      erb :team
    end


end

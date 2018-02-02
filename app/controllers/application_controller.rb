require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = params[:team][:name]
      @motto = params[:team][:motto]

      @hero_name = []
      @hero_power = []
      @hero_bio = []

      params[:team][:hero].each do |details|
        @hero_name << details[:name]
        @hero_power << details[:power]
        @hero_bio << details[:bio]
      end

      @team_members = params[:team][:hero]

      erb :team
    end

end

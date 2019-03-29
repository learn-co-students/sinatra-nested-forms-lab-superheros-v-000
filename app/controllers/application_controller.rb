require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @hero_name = []
      @hero_power = []
      @hero_bio = []

      params[:team][:members].each do |value|
        @hero_name << value[:name]
        @hero_power << value[:power]
        @hero_bio << value[:bio]
      end
      erb :team
    end


end

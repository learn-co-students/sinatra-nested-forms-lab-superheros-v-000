require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @member_name = []
      @member_power = []
      @member_bio = []

      @team_members = params[:team][:members]
        @team_members.each do |member|
          @member_name << member[:name]
          @member_power << member[:power]
          @member_bio << member[:bio]
      end
      
      erb :team
    end


end

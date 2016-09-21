require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @team_members = params[:team][:members]
      @member_name = []
      @member_bio = []
      @member_power = []

      @team_members.each do |member_hash|
        @member_name << member_hash[:name]
        @member_power << member_hash[:power]
        @member_bio << member_hash[:bio]
      end
      erb :team
    end

end

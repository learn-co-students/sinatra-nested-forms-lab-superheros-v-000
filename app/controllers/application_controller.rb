require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      team = params["team"]
      @team_name = team["name"]
      @team_motto = team["motto"]

      members = params["team"]["members"]
      @member_names = []
      @member_powers = []
      @member_bios = []

      members.each do |member|
        @member_names << member[:name]
        @member_powers << member[:power]
        @member_bios << member[:bio]
        end

      erb :team
    end

end

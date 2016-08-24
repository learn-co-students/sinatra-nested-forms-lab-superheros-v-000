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
      @member_power = []
      @member_bio = []
          
      @team_members.each do |member, attrib|
        @member_name << attrib[:name]
        @member_power << attrib[:power]
        @member_bio << attrib[:bio]
      end


      erb :team
    end

end

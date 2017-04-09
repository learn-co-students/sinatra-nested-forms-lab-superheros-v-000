require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do 
    	erb :super_hero
    end

    post '/teams' do 
    @team_name=params[:team][:name]
    @team_motto=params[:team][:motto]
    @team_member=params[:team][:members]
    @member_name=[]
    @member_power=[]
    @member_bio=[]
    @team_member.each do |info|
    	@member_name << info[:name]
    	@member_power << info[:power]
    	@member_bio << info[:bio]
    end
    	
    	erb :team
    end


end

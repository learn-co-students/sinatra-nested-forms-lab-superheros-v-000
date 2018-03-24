require 'sinatra/base'
require_relative '../models/team.rb'
require_relative '../models/member.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
        erb :super_hero
    end
    
    post '/team' do
        @team = Team.new(params[:team])
        params[:team][:members].each {|member|
            Member.new(member)
        }
        
        @members = Member.all
        
        erb :team
    end

end

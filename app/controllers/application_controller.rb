require 'sinatra/base'
require_relative '../models/team.rb'
require_relative '../models/member.rb'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end


    post '/teams' do 
      @team = Team.new(params[:team])
      params[:team][:members].each do |details|
        Member.new(details)
      end

      @members = Member.all
      erb :team
    end

end

require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end

    post '/teams' do 
      #raise params.inspect
      @team = Team.new(params[:team])
      params[:team][:members].each do |member|
        Member.new(member)
        #binding.pry
      end

      @all_members = Member.all
      #binding.pry
      erb :team
    end


end

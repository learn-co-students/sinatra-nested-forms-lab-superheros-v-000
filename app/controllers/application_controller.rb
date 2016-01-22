require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end

    post '/teams' do 
 
      @team = Team.new(params)

      @new_member = []
      params[:team][:member].each do |member|

        @new_member << SuperHero.new(member)
      end 
      @team.member = @new_member
      erb :team
    end 
end

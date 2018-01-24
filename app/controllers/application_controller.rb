require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_values = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      params[:team][:members].each do |member|
        Member.new(member)
      end

      @members = Member.all

      erb :team
    end



end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    get '/' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])
      member = params[:team][:members]

      @members = member.collect do |member|
        member
      end

      erb :team
    end
end

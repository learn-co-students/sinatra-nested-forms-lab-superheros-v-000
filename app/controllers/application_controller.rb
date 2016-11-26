require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :"../views/super_hero"
    end

    post '/teams' do
      @team = Team.new(params[:team])
      @member1 = Member.new(params[:team][:members][0])
      @member2 = Member.new(params[:team][:members][1])
      @member3 = Member.new(params[:team][:members][2])
      erb :"../views/team"
    end

end

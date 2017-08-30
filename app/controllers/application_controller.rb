require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    #  "Hello World"
      erb :super_hero
    end


    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |m|
        Member.new(m)
      end
      @members = Member.all
      erb :team
    end
end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = Team.new(params)
      params[:team][:members].each do |member, info|
        Member.new(member)
      end
      @members = Member.all
      erb :team
    end

end

require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do

      @teams = Team.new(name: params[:team][:name], motto: params[:team][:motto])

      params[:team][:member].each do |data|
        Member.new(data)
      end
      @members = Member.all

      erb :team
    end


end

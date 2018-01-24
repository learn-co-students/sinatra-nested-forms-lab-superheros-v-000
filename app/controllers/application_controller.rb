require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/team' do
      @team = Team.new(params["team"])
      @members = params["team"]["members"].map{|member_params| SuperHero.new(member_params)}
      erb :show
    end
end

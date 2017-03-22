require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      # "Hello"
      # binding.pry
      # "#{params[:team][:members]}"
      @team = Team.new(params[:team][:name], params[:team][:motto])
      params[:team][:members].each do |member|
        Member.new(member[:name], member[:power], member[:biography])
      end
      @members = Member.all
      erb :team
    end


end

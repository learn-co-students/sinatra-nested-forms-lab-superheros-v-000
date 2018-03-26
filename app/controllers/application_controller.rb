require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  get '/' do
    erb :super_hero
  end

  post '/team' do


    name = params[:team][:name]
    motto = params[:team][:motto]
    @team = Team.new(name, motto)

    params[:team][:members].each do |details|
      

      Member.new(details)
    end
    @members = Member.all

    erb :team
  end


end

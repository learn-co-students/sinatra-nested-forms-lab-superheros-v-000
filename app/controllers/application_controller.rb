require 'sinatra/base'


class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }


  get '/' do

    erb :'../views/super_hero'
  end



   post '/teams' do
    @team = Team.new(params[:team][:name], params[:team][:motto])

    @members = params[:team][:member].each do |member_info|
       Member.new(member_info[:name], member_info[:power], member_info[:bio])
    end



     erb :'../views/team'
  end


end

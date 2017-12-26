require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :views
    end

get '/new' do
  erb :'views/super_hero'
end

post '/teams' do
  @teams = Team.new(params[:team])
  params[:team][:members].each do |details|
    Member.new(details)
  end
  @members = Member.all
  erb :'views/teams'
end
end

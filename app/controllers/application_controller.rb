require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'super_hero'
    end

    post '/team' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      @heroes = members.map { |attributes|
        Heroes.new(name: attributes[:name], power: attributes[:power], bio: attributes[:bio])}
    erb :team
    end


end

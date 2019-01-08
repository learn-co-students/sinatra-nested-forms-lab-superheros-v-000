require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      @super_heroes = members.map do |member_args|
        Superhero.new({name: member_args[:name], power: member_args[:power], bio: member_args[:bio]})
      end
      erb :team
    end
end

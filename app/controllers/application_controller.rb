require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      members = params[:team][:members]
      members.each do |member|
        new_member = Member.new
        new_member.name = member[:name]
        new_member.power = member[:power]
        new_member.bio = member[:bio]
      end
      @members = Member.all

      erb :team
    end

end

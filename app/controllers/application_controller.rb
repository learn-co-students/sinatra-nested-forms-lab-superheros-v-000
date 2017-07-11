require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :team_form
  end

  post '/teams' do

    Team.new(
      name: params[:team][:name],
      motto: params[:team][:motto],
      members: params[:team][:members].collect do |member|
        Member.new(member) unless member.values.uniq == [""]
      end.compact
    )

    erb :team_display

  end


end

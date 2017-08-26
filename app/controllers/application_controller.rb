require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

     get '/' do
       erb :super_hero
     end

     post '/teams' do
      @p = params
      @t = @p[:team]
      @members = @t[:members]
      @team = Team.new(@t)

      @members.each do |member|
        new_member = Hero.new(member)
        Team.all << new_member
      end

      @member1 = Team.all[0]
      @member2 = Team.all[1]
      @member3 = Team.all[2]

       erb :team
     end

end

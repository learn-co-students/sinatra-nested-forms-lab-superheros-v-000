require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    #create a route that responds to a GET request at /
    get '/' do
      erb :new
    end

    post '/teams' do
      #binding.pry
=begin
      => {"team"=>
  {"name"=>"Poker Players",
   "motto"=>"Donk Out!",
   "heroes"=>
    [{"name"=>"Neil", "power"=>"Bets", "bio"=>"Wins a decent amount"},
     {"name"=>"Schmobins", "power"=>"calls a lot ", "bio"=>"wins sometimes"},
     {"name"=>"mark", "power"=>"bets at the right time", "bio"=>"winning a bunch"}]}} -->
=end
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @hero1_name = params[:team][:heroes][0][:name]
      @hero1_power = params[:team][:heroes][0][:power]
      @hero1_bio = params[:team][:heroes][0][:bio]

      @hero2_name = params[:team][:heroes][1][:name]
      @hero2_power = params[:team][:heroes][1][:power]
      @hero2_bio = params[:team][:heroes][1][:bio]

      @hero3_name = params[:team][:heroes][2][:name]
      @hero3_power = params[:team][:heroes][2][:power]
      @hero3_bio = params[:team][:heroes][2][:bio]

      erb :team
    end

end

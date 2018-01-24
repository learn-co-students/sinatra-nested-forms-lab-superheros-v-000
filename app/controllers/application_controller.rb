

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get "/" do
    erb :super_hero
  end

  post "/team" do
    @team = Team.new(params[:team][:name], params[:team][:motto])
    params[:team][:hero].each do |hero|
      SuperHero.new(hero)
    end
    erb :team
  end
end

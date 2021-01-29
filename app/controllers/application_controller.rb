require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
        params[:team][:members].each do |details|
            Superhero.new(details)
        end
        @superheroes = Superhero.all

        erb :team
    end


end

# ### Make a form

# 1. Create a route that responds to a GET request at `/`.
# 2. Create a view with a form and render it in the GET `/` route.
# 3. The form should have fields for the `name` of a superhero team and their `motto`.
# 4. There should be form inputs for each of the three superhero members' `name`, `power`, and `bio`.


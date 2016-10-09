require 'sinatra/base'

class App < Sinatra::Base

    get '/' do
      erb :superhero
    end

    post '/team' do

    end
    
    set :views, Proc.new { File.join(root, "../views/") }

end

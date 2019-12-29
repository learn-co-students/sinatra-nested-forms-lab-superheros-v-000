require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get "/" do 
      erb :new
    end
    
    post "/show" do 
      erb :show
    end

end

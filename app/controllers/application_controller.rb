class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      # 'hello world'
      erb :index
    end


end

class RedmartApp < Sinatra::Base
  register Sinatra::AssetPipeline

  get '/' do
    haml :index
  end

  get '/' do
    erb 'Hello, it me
     <a class="btn btn-default" href="/users">View Users</a>'
  end

  get '/users' do
    @users = User.all

    erb :'users'
  end
end

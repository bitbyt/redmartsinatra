class RedmartApp < Sinatra::Base

  get '/' do
    erb 'Hello, it me
     <a class="btn btn-default" href="/users">View Users</a>'
  end

  get '/users' do
    @users = User.all

    erb :'users'
  end

  get '/users/:id' do
    @user = User.find(params[:id])

    erb :'each_user'
  end
end

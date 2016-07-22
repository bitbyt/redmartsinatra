class RedmartApp < Sinatra::Base

  get '/' do
    erb :'index'
  end

  get '/users' do
    @users = User.all

    erb :'users/index'
  end

  get '/users/new' do
    erb :'users/new'
  end

  get '/users/:id' do
    @user = User.find(params[:id])

    erb :'users/show'
  end

  get '/products' do
    @products = Product.all

    erb :'products/index'
  end
end

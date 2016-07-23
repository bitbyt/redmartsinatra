class RedmartApp < Sinatra::Base

  get '/' do
    erb :'index'
  end

  # Users

  get '/users' do
    @users = User.all
    erb :'users/index'
  end

  get '/users/:id' do
    if params[:id] == 'new'
      erb(:"users/new")
    else
      @user = User.find(params[:id])

      erb :'users/show'
    end
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :'users/edit'
  end

  post '/users' do
    puts params[:user]

    @new_user = User.new(params[:user])

    if @new_user.save
      redirect("/users/#{@new_user.id}")
    else
      erb(:"users/new")
    end
  end

  put '/users/:id' do
    @updated_user = User.find(params[:id])

    if @updated_user.update_attributes( params[:user] )
      redirect("/users")
    end
  end

  delete '/users/:id' do
    @deleted_user = User.find(params[:id])
    if @deleted_user.destroy
      # go to all users list
      redirect("/users")
    else
      # throw an error
      erb :"users/#{ @deleted_user.id }"
    end
  end

  # Products

  get '/products' do
    @products = Product.all

    erb :'products/index'
  end

  # Products

  get '/categories' do
    @categories = Category.all

    erb :'categories/index'
  end

end

class RedmartApp < Sinatra::Base

  get '/' do
    @categories = Category.all
    @products = Product.all
    
    erb :'index'
  end

  # Shop

  get '/shop' do
    @products = Product.all
    erb :'shop/index'
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

  get '/products/:id' do
    if params[:id] == 'new'
      erb(:"products/new")
    else
      @product = Product.find(params[:id])

      erb :'products/show'
    end
  end

  get '/products/:id/edit' do
    @product = Product.find(params[:id])
    erb :'products/edit'
  end

  post '/products' do
    puts params[:product]

    @new_product = Product.new(params[:product])

    if @new_product.save
      redirect("/products/#{@new_product.id}")
    else
      erb(:"products/new")
    end
  end

  put '/products/:id' do
    @updated_product = Product.find(params[:id])

    if @updated_product.update_attributes( params[:product] )
      redirect("/products")
    end
  end

  delete '/products/:id' do
    @deleted_product = Product.find(params[:id])
    if @deleted_product.destroy
      # go to all products list
      redirect("/products")
    else
      # throw an error
      erb :"products/#{ @deleted_product.id }"
    end
  end

  # categories

  get '/categories' do
    @categories = Category.all

    erb :'categories/index'
  end

  get '/categories/:id' do
    if params[:id] == 'new'
      erb(:"categories/new")
    else
      @category = Category.find(params[:id])

      erb :'categories/show'
    end
  end

  get '/categories/:id/edit' do
    @category = Category.find(params[:id])
    erb :'categories/edit'
  end

  post '/categories' do
    puts params[:category]

    @new_category = Category.new(params[:category])

    if @new_category.save
      redirect("/categories")
    else
      erb(:"categories/new")
    end
  end

  put '/categories/:id' do
    @updated_category = Category.find(params[:id])

    if @updated_category.update_attributes( params[:category] )
      redirect("/categories")
    end
  end

  delete '/categories/:id' do
    @deleted_category = Category.find(params[:id])
    if @deleted_category.destroy
      # go to all categories list
      redirect("/categories")
    else
      # throw an error
      erb :"categories/#{ @deleted_category.id }"
    end
  end

  # brands

  get '/brands' do
    @brands = Brand.all

    erb :'brands/index'
  end

  get '/brands/:id' do
    if params[:id] == 'new'
      erb(:"brands/new")
    else
      @brand = Brand.find(params[:id])

      erb :'brands/show'
    end
  end

  get '/brands/:id/edit' do
    @brand = Brand.find(params[:id])
    erb :'brands/edit'
  end

  post '/brands' do
    puts params[:brand]

    @new_brand = Brand.new(params[:brand])

    if @new_brand.save
      redirect("/brands")
    else
      erb(:"brands/new")
    end
  end

  put '/brands/:id' do
    @updated_brand = Brand.find(params[:id])

    if @updated_brand.update_attributes( params[:brand] )
      redirect("/brands")
    end
  end

  delete '/brands/:id' do
    @deleted_brand = Brand.find(params[:id])
    if @deleted_brand.destroy
      # go to all brands list
      redirect("/brands")
    else
      # throw an error
      erb :"brands/#{ @deleted_brand.id }"
    end
  end

end

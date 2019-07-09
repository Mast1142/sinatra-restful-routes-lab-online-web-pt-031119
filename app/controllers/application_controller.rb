class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes/new' do
    erb :new
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  post '/recipes' do
    @recipe = Recipe.create(:name => params[:name], :ingrdients => params[:ingrdients], :cooktime => params[:cooktime])
    redirect to "/recipes/#{@recipe.id}"
  end

end

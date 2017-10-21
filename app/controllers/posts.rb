get '/posts' do
  @posts = Post.all
  erb :'posts/index'
end

get '/posts/new' do
  erb :"posts/new"
end

get '/posts/:id' do
  @post = Post.find_by(id: params[:id])
  erb :'posts/show'
end


post '/posts' do
  # p params[:picture]
  Post.create(photo_url: params[:picture], question: params[:question], user_id: session[:user_id])

  redirect "/"
end



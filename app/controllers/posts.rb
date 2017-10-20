get '/posts' do
  @posts = Post.all
  erb :'posts/index'
end

get '/posts/:id' do
  @post = Post.find_by(id: params[:id])
  erb :'posts/show'
end

get '/posts/new' do
  erb :"posts/new"
end

post 'posts' do
  Post.new()
end


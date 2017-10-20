get '/posts' do
  @posts = Post.all
  erb :'posts/index'
end

get '/posts/:id' do
  @post = Post.find_by(id: params[:id])
  erb :'posts/show'
end


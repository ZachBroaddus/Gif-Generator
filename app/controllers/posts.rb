get '/posts' do
  @posts = Post.all
  erb :'posts/show'
end

get '/posts' do
  @posts = Post.all
  erb :'posts/show'
end

get '/posts/new' do
  erb :"posts/new"
end

post 'posts' do
  Post.new()
end

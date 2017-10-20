get '/answers/new' do
  @post = Post.find(params[:id])
  @answer = Answer.create(description_text: params[:answer], vote_tally: 0)
  erb :'answers/new'
end

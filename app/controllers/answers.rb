get '/answers/new' do
  @post = Post.find(params[:id])
  @answer = Answer.create(description_text: params[:answer], vote_tally: 0)
  erb :'answers/new'
end

post '/posts/:post_id/answers' do
  @post = Post.find(params[:post_id])
  @answer = Answer.new(description_text: params[:answer], user_id: session[:user_id], post_id: @post.id, vote_tally: 0)
  if @answer.save
    redirect request.referrer
  else
    @answer.errors.full_messages
    @errors = @answer.errors.full_messages
    erb :'posts/show'
  end
end

get '/answers/new' do
  @post = Post.find(params[:id])
  @answer = Answer.create(description_text: params[:answer], vote_tally: 0)
  erb :'answers/new'
end

post '/posts/:post_id/answers' do
  @post = Post.find(params[:post_id])
  @answer = Answer.new(description_text: params[:answer], user_id: session[:user_id], post_id: @post.id)
  p params
  if @answer.save
    p "We're saving successfully!"
    redirect request.referrer
  else
    p "didnt save!"
    p @answer.errors.full_messages
    @errors = @answer.errors.full_messages
    erb :'posts/show'
  end
end

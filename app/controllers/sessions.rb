get '/sessions/new' do
  @previous_page = request.referrer
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = ["Either your username or password was wrong, fren"]
    erb :'sessions/new'
  end
end

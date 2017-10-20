get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by(username: params[:username])
  if @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/'
  elsif params[:password].length == 0
    @message = "Error: Password required!"
    erb :'sessions/new'
  else
    @message = "Error: Either your username or password was wrong!"
    erb :'sessions/new'
  end
end

delete '/sessions' do
  session[:user_id] = nil
  redirect '/'
end

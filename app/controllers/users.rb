get '/users/new' do
  @user = User.new
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect '/sessions/new'
  else
    @errors = user.errors.full_messages
    erb :"users/new"
  end
end

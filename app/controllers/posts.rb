# get '/posts' do
#   @posts = Post.all
#   erb :'posts/index'
# end

# get '/posts/new' do
#   erb :"posts/new"
# end

# get '/posts/:id' do
#   @post = Post.find_by(id: params[:id])
#   erb :'posts/show'
# end


# post '/posts' do
#   @post = Post.create(photo_url: params[:picture], question: params[:question], user_id: session[:user_id], vote_tally: 0)

#   redirect "/posts/#{@post.id}"
# end

# post '/posts/:id/vote' do
#   post = Post.find(params[:id])

#     p "IS AN AJAX REQUEST?"
#     p request.xhr?
#   post.votes.create(votable_type: "post", votable_id: post.id, user_id: session[:user_id])

#   if request.xhr? && logged_in?
#     post.votes.count.to_s
#   else
#     redirect "/posts/#{post.id}"
#   end
# end

# delete '/posts/:id/vote' do
#   post = Post.find(params[:id])
#   post.votes.last.destroy
#   if request.xhr? && logged_in?
#     post.votes.count.to_s
#   else
#     redirect "/posts/#{post.id}"
#   end
# end



get '/posts' do
  @posts = Post.all
  erb :'posts/index'
end

get '/posts/new' do
  erb :"posts/new"
end

get '/posts/:id' do
  @post = Post.find_by(id: params[:id])
  erb :'posts/show'
end


post '/posts' do
  @post = Post.create(photo_url: params[:picture], question: params[:question], user_id: session[:user_id], vote_tally: 0)

  redirect "/posts/#{@post.id}"
end

post '/posts/:id/vote' do
  post = Post.find(params[:id])

  # p "THIS IS AN AJAX REQUEST"
  # p request.xhr?

  if logged_in?
    if request.xhr?
      post.votes.create(votable_type: "post", votable_id: post.id, user_id: session[:user_id])
      post.votes.count.to_s
    end
  end
    redirect "/posts/#{post.id}"
end

delete '/posts/:id/vote' do
  post = Post.find(params[:id])
  post.votes.last.destroy
  if request.xhr? && logged_in?
    post.votes.count.to_s
  else
    redirect "/posts/#{post.id}"
  end
end

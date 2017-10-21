post '/comments/new' do
  p "plz get this ********************************"
  @comment = Comment.create!(description_text: params[:comment_text], user_id: session[:user_id], commentable_type: "Post", commentable_id: params[:commentable_id])
  p "#{@comment} **********************************"

end


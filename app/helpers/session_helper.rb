def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def logged_in?
  session[:user_id] != nil
end

def authenticate!
  redirect '/sessions/new' unless logged_in?
end

def authorize!(user)
  redirect '/not_authorized' unless authorized?(user)
end

def authorized?(user)
  current_user == user
end

def guest_user
  @guest_user ||= User.find_by(email: "guest@guest.com")
end

def guest_user?
  return current_user == guest_user if session[:user_id]
  false
end

def reset_guest
  guest_user.giphs.each { |giph| giph.destroy }
end

# def poster?
#   current_user == @post.user
# end

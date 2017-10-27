get '/' do
  erb :'/index'
end

post '/' do
  @giphy = Giph.create
  keyword = params[:keyword]
  response = @giphy.get_api_response(keyword)
  @giphy.image_url = response['data'][rand(0..4)]['images']['original']['url']

  if request.xhr?
    erb :'_giph_with_form', layout: false
  else
    erb :'/index'
  end
end



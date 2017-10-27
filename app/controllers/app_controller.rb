get '/' do
  @giphy = Giph.create
  response = @giphy.get_api_response
  p @giphy.image_url = response['data'][rand(0..4)]['images']['fixed_height']['url']

  erb :'/index'
end

post '/' do

end



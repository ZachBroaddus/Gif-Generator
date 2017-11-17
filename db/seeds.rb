User.create!(username: "guest", email: "guest@guest.com", password: "guestyisbesty")

# 10.times do
#   User.create!(username: Faker::Science.scientist, email: Faker::Internet.safe_email, password: Faker::Internet.password(8, 14))
# end

# 40.times do
#   giphy = Giph.new
#   keyword = Faker::Food.dish
#   response = giphy.get_api_response(keyword)
#   giphy.image_url = response['data'][rand(0..4)]['images']['original']['url']
#   giphy.user_id = rand(1..10)
#   giphy.save
# end

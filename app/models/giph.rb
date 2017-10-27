class Giph < ActiveRecord::Base
  # Remember to create a migration!
  # validates :image_url, presence: true

  def get_api_response
    # Remove API_KEY from code before pushing
    api_key = "fqAzP5UHkbdp2ITsnM5Cm3Zn0iHJUcTg"

    url = "http://api.giphy.com/v1/gifs/search?q=ryan+gosling&api_key=#{api_key}&limit=5"
    resp = Net::HTTP.get_response(URI.parse(url))
    buffer = resp.body
    result = JSON.parse(buffer)
    # puts result
    # uri = URI(image_url)
    # api_response = Net::HTTP.get(uri)
    # response_collection = JSON.parse(api_response)
  end

  # def make_giphs
  #   p get_api_response
  # end
end

@giphy = Giph.create
response = @giphy.get_api_response
@giphy.image_url = response['data'][rand(0..4)]['url']

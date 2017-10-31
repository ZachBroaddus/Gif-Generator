class Giph < ActiveRecord::Base

  def get_api_response(keyword)
    api_key = "fqAzP5UHkbdp2ITsnM5Cm3Zn0iHJUcTg"

    url = "http://api.giphy.com/v1/gifs/search?q=#{keyword}&api_key=#{api_key}&rating=pg-13&limit=5"
    resp = Net::HTTP.get_response(URI.parse(url))
    buffer = resp.body
    result = JSON.parse(buffer)
  end
end


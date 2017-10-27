class Giph < ActiveRecord::Base

  def get_api_response(keyword)
    url = "http://api.giphy.com/v1/gifs/search?q=#{keyword}&API_KEY=#{API_KEY}&rating=pg-13&limit=5"
    resp = Net::HTTP.get_response(URI.parse(url))
    buffer = resp.body
    result = JSON.parse(buffer)
  end
end


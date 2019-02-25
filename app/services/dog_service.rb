class DogService

  def create_poodles
    get_urls.map do |url|
      Poodle.new(url)
    end
  end

  def get_urls
    get_data[:message][0..8]
  end

  def get_data
    to_json(conn.get('/api/breed/poodle/images'))
  end

  def to_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://dog.ceo')
  end
end

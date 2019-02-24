class DogService

  def get_poodles
    to_json(conn.get('/api/breed/poodle/images'))
  end

  def to_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://dog.ceo')
  end
end

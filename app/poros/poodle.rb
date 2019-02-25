class Poodle
  attr_reader :url,
              :ranking
  def initialize(url, ranking = 0)
    @url = url
    @ranking = ranking
  end
end

class WelcomeController < ApplicationController
  def index
    service = DogService.new
    @images = service.get_urls
  end
end

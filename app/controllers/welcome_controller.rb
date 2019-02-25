class WelcomeController < ApplicationController
  def index
    service = DogService.new
    @images = service.create_poodles
  end
end

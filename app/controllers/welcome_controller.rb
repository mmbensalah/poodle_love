class WelcomeController < ApplicationController
  def index
    create_poodle_objects
    @images = Poodle.all
  end

  def create_poodle_objects
    service = DogService.new
    service.create_poodles
  end
end

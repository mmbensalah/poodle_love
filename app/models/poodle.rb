class Poodle < ApplicationRecord
  
  def create_poodle_objects
    DogService.new.create_poodles
  end
end

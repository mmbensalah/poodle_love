class WelcomeController < ApplicationController
  def index
    @images = Poodle.all
  end
end

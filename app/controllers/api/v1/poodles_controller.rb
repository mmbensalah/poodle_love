class Api::V1::PoodlesController < ApplicationController

  def update
    poodle = Poodle.find(params[:id])
    binding.pry
    poodle.update(params_in)
  end

  def params_in
    params.permit(:ranking)
  end
end

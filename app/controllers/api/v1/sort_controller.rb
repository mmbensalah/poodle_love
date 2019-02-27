class Api::V1::SortController < ApplicationController
  def index
    render json: Poodle.order(ranking: :desc)
  end
end

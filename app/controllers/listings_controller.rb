class ListingsController < ApplicationController
  before_filter :set_default_response_format

  def index
    @listings = Listing.all
    render json: @listings
  end

  private
  def set_default_response_format
    request.format = :json
  end
end

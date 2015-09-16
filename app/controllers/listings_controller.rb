class ListingsController < ApplicationController
  before_filter :set_default_response_format

  def index
    @listings = Listing.query(params)
    render :index
  end

  private
  def set_default_response_format
    request.format = :json
  end
end

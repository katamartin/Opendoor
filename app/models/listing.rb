class Listing < ActiveRecord::Base
  validates(
    :street,
    :status,
    :price,
    :bedrooms,
    :bathrooms,
    :lat,
    :lng,
    :sq_ft,
    presence: true
  )

  def query(params)

  end
end

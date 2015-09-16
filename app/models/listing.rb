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

  COMPARATORS = {
    "min" => ">",
    "max" => "<"
  }

  COLUMNS = {
    "bed" => "bedrooms",
    "bath" => "bathrooms",
    "price" => "price"
  }

  def self.query(params)
    query_params = []
    params.each do |k, v|
      field = k.split("-")
      if COMPARATORS[field.first] && COLUMNS[field.last]
        query_params << "#{COLUMNS[field.last]} COMPARATORS[field.last] #{v}"
      end
    end
    query_params.join(" AND ")
    where(query_params)
  end
end

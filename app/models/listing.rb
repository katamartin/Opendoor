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
    "min" => ">=",
    "max" => "<="
  }

  COLUMNS = {
    "bed" => "bedrooms",
    "bath" => "bathrooms",
    "price" => "price"
  }

  def self.query(params)
    where(filters(params))
  end

  def self.filters(params)
    search = []
    params.each do |k, v|
      field = k.split("_")
      if COMPARATORS[field.first] && COLUMNS[field.last]
        search << "#{COLUMNS[field.last]} #{COMPARATORS[field.first]} #{v}"
      end
    end
    search.join(" AND ")
  end
end

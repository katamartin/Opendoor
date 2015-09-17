json.type "FeatureCollection"
json.features @listings do |listing|
  json.type "Feature"
  json.geometry listing, partial: 'geometry', as: :listing
  json.properties listing, partial: 'listing', as: :listing
 end
